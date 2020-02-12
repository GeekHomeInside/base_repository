## Update your git repository and current branch
.PHONY: update
update:
	git pull --rebase

## Server the kubees documentation at http://localhost:1313/
.PHONY: themes/yourhugothemes
docs: themes/yourhugothemes
	hugo server -w

## Install submodule
themes/hugo-theme-terminal/:
	git submodule update --init --recursive
