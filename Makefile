SHELL=/usr/bin/bash
# test:
	# nvim --headless --noplugin -u scripts/minimal.vim -c "PlenaryBustedDirectory tests/plenary/ {minimal_init = 'tests/minimal_init.vim'}"
gen_doc:
	lemmy-help -c -a -f -t lua/schmetterling/{init,setup}.lua > doc/schmetterling.txt

test_cont:
	watchmedo shell-command -R -W -c "nvim --headless -c \"PlenaryBustedDirectory tests/schmetterling/ {minimal_init = 'tests/minimal_init.vim'}\""

test_all:
	nvim --headless -c "PlenaryBustedDirectory tests/schmetterling/ {minimal_init = 'tests/minimal_init.vim'}"
