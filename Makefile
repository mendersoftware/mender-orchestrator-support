DESTDIR ?= /
prefix ?= $(DESTDIR)
datadir ?= /usr/share


UPDATE_INTERFACES := $(shell find interfaces/v1 -type f)
UPDATE_INTERFACES_INSTALL_TARGETS = $(addprefix install-,$(subst /,-,$(UPDATE_INTERFACES)))
UPDATE_INTERFACES_UNINSTALL_TARGETS = $(addprefix uninstall-,$(subst /,-,$(UPDATE_INTERFACES)))


all:

install: $(UPDATE_INTERFACES_INSTALL_TARGETS)
uninstall: $(UPDATE_INTERFACES_UNINSTALL_TARGETS)

# Dynamic targets like install-interfaces-v1-rootfs-image
install-interfaces-v1-%: INTERFACE=$*
install-interfaces-v1-%:
	install -m 755 -d $(prefix)$(datadir)/mender-orchestrator/interfaces/v1
	install -m 755 interfaces/v1/$(INTERFACE) $(prefix)$(datadir)/mender-orchestrator/interfaces/v1/

# Dynamic targets like uninstall-interfaces-v1-rootfs-image
uninstall-interfaces-v1-%: INTERFACE=$*
uninstall-interfaces-v1-%:
	rm -f $(prefix)$(datadir)/mender-orchestrator/interfaces/v1/$(INTERFACE)
	-rmdir -p $(prefix)$(datadir)/mender-orchestrator/interfaces/v1

.PHONY: all 
.PHONY: install
.PHONY: uninstall
