#!/bin/bash

printf "SH1106 Python Library: Installer\n\n"

if [ $(id -u) -ne 0 ]; then
	printf "Script must be run as root. Try 'sudo ./install.sh'\n"
	exit 1
fi

git submodule update --init

git submodule foreach "

	printf \"Removing \$name for Python 2..\n\"
	sudo pip uninstall \$name

	if [ -f \"/usr/bin/pip3\" ]; then
		printf \"Removing \$name for Python 3..\n\"
		sudo pip3 uninstall $\$name
	fi

	printf \"\n\"
"

printf "Done!\n"
