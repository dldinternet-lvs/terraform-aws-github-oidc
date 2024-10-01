ROOT_DIR ?= $(PWD)
AWS_PROFILE ?= cloud-services-prod
IS_MONOREPO ?= yes
TEMPLATED ?= no
include $(ROOT_DIR)/Makefile.d/help.mk
include $(ROOT_DIR)/Makefile.d/pre-commit.mk
include $(ROOT_DIR)/Makefile.d/terraform.mk

ITERATE_MODULES = $(USE_MONOREPO); \
for d in $(ROOT_DIR)/terraform $(ROOT_DIR)/modules/*; do \
	if [ -d $$d -a -z "$$(echo $$d | egrep -e '(__pycache__)')" ] ; then \
		echo $$d; \
		cd $$d; \
		if [ ! -f Makefile ] ; then \
		  echo "$$d does not have a Makefile" ; \
		else \
			if [ -z "$$(egrep /Makefile.d/ Makefile 2>/dev/null)" ] ; then \
				echo "$$d does not have a compatible Makefile" ; \
			else \
				[ ! -f ".envrc" ] || bash -c 'direnv allow'; \
				[ -z "$$MAKE_GOAL" ] || make $$MAKE_GOAL; RC=$$?; \
				[ 0 -eq $$RC ] || { echo "Non-zero RC: $$RC"; exit $$RC; } ; \
			fi; \
		fi; \
		cd $(ROOT_DIR); \
	fi; \
done

.PHONY: help lock init

lock: # Update terraform.lock.hcl files
	@export MAKE_GOAL=$@ ; $(ITERATE_MODULES)

init reinit: # Init terraform modules
	@export MAKE_GOAL=$@ ; $(ITERATE_MODULES)
