ABBLPREFIX ?= /usr/lib/aosc-bashlib
all:abbl-invoke
abbl-invoke:abbl-invoke.in
	sed -e 's|@ABBLPREFIX@|'"$(ABBLPREFIX)"'|g' < abbl-invoke.in > abbl-invoke
	chmod a+x abbl-invoke
