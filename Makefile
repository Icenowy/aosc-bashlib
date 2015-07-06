ABBLPREFIX ?= /usr/lib/aosc-bashlib
all:abbl-invoke test/test-abbl-invoke/main.sh
abbl-invoke:abbl-invoke.in
	sed -e 's|@ABBLPREFIX@|'"$(ABBLPREFIX)"'|g' < abbl-invoke.in > abbl-invoke
	chmod a+x abbl-invoke
test/test-abbl-invoke/main.sh:test/test-abbl-invoke/main.sh.in
	sed -e 's|@ABBLPREFIX@|'"$(ABBLPREFIX)"'|g' < test/test-abbl-invoke/main.sh.in > test/test-abbl-invoke/main.sh
