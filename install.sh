#!/bin/bash

printf "SH1106 Python Library: Installer\n\n"

if [ $(id -u) -ne 0 ]; then
	printf "Script must be run as root. Try 'sudo ./install.sh'\n"
	exit 1
fi

git submodule update --init

git submodule foreach "
	printf \"Updating files..\n\"
	git pull origin master

	printf \"Installing \$name for Python 2..\n\"
	python setup.py --quiet bdist_wheel
	pip install dist/*.whl

	if [ -f \"/usr/bin/python3\" ]; then
		printf \"Installing \$name for Python 3..\n\"
		python3 setup.py --quiet bdist_wheel
		pip3 install dist/*.whl
	fi

	printf \"\n\"
"

printf "Done!\n"
