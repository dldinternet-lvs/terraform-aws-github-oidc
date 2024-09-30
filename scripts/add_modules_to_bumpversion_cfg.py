"""Add modules to bumpversion config."""
import difflib
import os
import pathlib
import re
import sys

root = pathlib.Path(__file__).parent.parent

lib_dir = root / "lib"
if str(lib_dir) not in sys.path:
    sys.path.insert(0, str(lib_dir))

import bumpversion.cli  # noqa: E402
from toolbag.utils.hcl.formatting import python_to_hcl  # noqa: E402

IAC_OUTPUT = re.compile(r'output\s+"iac_version"\s+\{')
VAL_LINE = re.compile(r'^(\s*value\s+=\s+)"([0-9.]+)"\s*')


def hcl_output(output: dict, indent: int = 2) -> str:
    """Convert a dict to HCL output."""
    hcl = ""
    indt = " " * indent
    # We can dedent like this dedt = " " * (indent - 2)
    for name, value in output.items():
        hcl += f'output "{name}" {{\n'
        hcl += f"{indt}value = {python_to_hcl(value.value)}\n"
        hcl += "}\n"
    return hcl


def fixup_iac_version_in_outputs(output_tf: pathlib.Path, version: str) -> None:
    """Update the iac_version output in the output file."""
    print(f"{output_tf.parent.name}: >")
    code = output_tf.read_text()
    # look for an output named "iac_version"
    if IAC_OUTPUT.search(code):
        update_iac_version_in_output_tf(code, version, output_tf)
    else:
        print("No changes to outputs.tf ...")
    update_bumpversion_cfg(version, output_tf)
    print(f"{output_tf.parent.name}: <")


def update_bumpversion_cfg(version: str, output_tf: pathlib.Path) -> None:
    """Update the bumpversion config file to include the output file."""
    config_file = root / ".bumpversion.cfg"
    explicit_config = None
    defaults = {"current_version": version}
    bumpversion.cli.logger.setLevel("WARNING")
    # pylint: disable=protected-access
    config, config_file_exists, config_newlines, *_ = bumpversion.cli._load_configuration(
        config_file,
        explicit_config,
        defaults,
    )

    section = f'bumpversion:file:{str(output_tf).replace(str(root), "").lstrip("/")}'
    if section not in config.sections():
        config.add_section(section)
        config.set(
            section,
            "parse",
            "^\\s+value\\s+=\\s+['\"]*(?P<major>\\d+)\\.(?P<minor>\\d+)\\.(?P<patch>\\d+)['\"]*",
        )
        config.set(section, "search", 'value = "{current_version}"')
        config.set(section, "replace", 'value = "{new_version}"')
        # pylint: disable=protected-access
        bumpversion.cli._update_config_file(
            config,
            config_file,
            config_newlines,
            config_file_exists,
            version,
            False,
        )


def update_iac_version_in_output_tf(code: str, version: str, output_tf: pathlib.Path) -> None:
    """Update the iac_version output in outputs.tf."""
    lines = re.split(r"\n", code)
    old = lines.copy()
    iacvs = {lno: line for lno, line in enumerate(lines) if IAC_OUTPUT.search(line)}
    if iacvs:
        for lno, line in iacvs.items():
            value_line = lines[lno + 1]
            if matches := VAL_LINE.search(value_line):
                if matches and matches[2] != version:
                    value_line = VAL_LINE.sub(f'\\1"{version}"', value_line)
                    lines[lno + 1] = value_line
                    print(f"{output_tf.parent.name}: Updating outputs.tf ...")
                    diff = list(difflib.ndiff(old, lines))
                    delta = "\n".join([line.rstrip() for lno, line in enumerate(diff) if line[0] not in (" ",)])
                    print(delta)
                    output_tf.write_text("\n".join(lines))
                else:
                    print(f"{output_tf.parent.name}: No change needed")
            else:
                msg = f"Could not find value line for {line}"
                raise ValueError(msg)


def main() -> None:
    """Add modules to bumpversion config."""
    modules_dir = root / "modules"
    iac_version = None
    if (ver_file := root / "VERSION").is_file():
        iac_version = ver_file.read_text().strip()

    if not iac_version:
        print("No VERSION found. Exiting ...")
        sys.exit(1)

    for mod_dir in modules_dir.iterdir():
        if mod_dir.is_dir():
            cwd = pathlib.Path.cwd()
            try:
                os.chdir(str(mod_dir))
                output_tf = mod_dir / "outputs.tf"
                if output_tf.exists():
                    fixup_iac_version_in_outputs(output_tf, iac_version)
                else:
                    print(f"No {output_tf} file", file=sys.stderr)
            finally:
                os.chdir(cwd)


if __name__ == "__main__":
    main()
