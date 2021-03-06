#!/usr/bin/env bash
#
# This file is generated by l2tdevtools update-dependencies.py any dependency
# related changes should be made in dependencies.ini.

# Exit on error.
set -e

# Dependencies for running plaso, alphabetized, one per line.
# This should not include packages only required for testing or development.
PYTHON2_DEPENDENCIES="PyYAML
                      libbde-python
                      libesedb-python
                      libevt-python
                      libevtx-python
                      libewf-python
                      libfsntfs-python
                      libfvde-python
                      libfwnt-python
                      libfwsi-python
                      liblnk-python
                      libmsiecf-python
                      libolecf-python
                      libqcow-python
                      libregf-python
                      libscca-python
                      libsigscan-python
                      libsmdev-python
                      libsmraw-python
                      libvhdi-python
                      libvmdk-python
                      libvshadow-python
                      libvslvm-python
                      python-XlsxWriter
                      python-artifacts
                      python-bencode
                      python-biplist
                      python-chardet
                      python-crypto
                      python-dfdatetime
                      python-dfvfs
                      python-dfwinreg
                      python-dtfabric
                      python-efilter
                      python-elasticsearch
                      python-elasticsearch5
                      python-hachoir-core
                      python-hachoir-metadata
                      python-hachoir-parser
                      python-pefile
                      python-psutil
                      python-pysqlite
                      python-pytsk3
                      python-requests
                      python-six
                      python2-backports-lzma
                      python2-certifi
                      python2-dateutil
                      python2-future
                      python2-idna
                      python2-lz4
                      python2-pyparsing
                      python2-pytz
                      python2-urllib3
                      python2-yara
                      python2-zmq";

# Additional dependencies for running tests, alphabetized, one per line.
TEST_DEPENDENCIES="python-mock";

# Additional dependencies for development, alphabetized, one per line.
DEVELOPMENT_DEPENDENCIES="pylint
                          python-sphinx";

# Additional dependencies for debugging, alphabetized, one per line.
DEBUG_DEPENDENCIES="libbde-debuginfo
                    libbde-python-debuginfo
                    libesedb-debuginfo
                    libesedb-python-debuginfo
                    libevt-debuginfo
                    libevt-python-debuginfo
                    libevtx-debuginfo
                    libevtx-python-debuginfo
                    libewf-debuginfo
                    libewf-python-debuginfo
                    libfsntfs-debuginfo
                    libfsntfs-python-debuginfo
                    libfvde-debuginfo
                    libfvde-python-debuginfo
                    libfwnt-debuginfo
                    libfwnt-python-debuginfo
                    libfwsi-debuginfo
                    libfwsi-python-debuginfo
                    liblnk-debuginfo
                    liblnk-python-debuginfo
                    libmsiecf-debuginfo
                    libmsiecf-python-debuginfo
                    libolecf-debuginfo
                    libolecf-python-debuginfo
                    libqcow-debuginfo
                    libqcow-python-debuginfo
                    libregf-debuginfo
                    libregf-python-debuginfo
                    libscca-debuginfo
                    libscca-python-debuginfo
                    libsigscan-debuginfo
                    libsigscan-python-debuginfo
                    libsmdev-debuginfo
                    libsmdev-python-debuginfo
                    libsmraw-debuginfo
                    libsmraw-python-debuginfo
                    libvhdi-debuginfo
                    libvhdi-python-debuginfo
                    libvmdk-debuginfo
                    libvmdk-python-debuginfo
                    libvshadow-debuginfo
                    libvshadow-python-debuginfo
                    libvslvm-debuginfo
                    libvslvm-python-debuginfo
                    python-guppy";

sudo dnf install dnf-plugins-core
sudo dnf copr -y enable @gift/dev
sudo dnf install -y ${PYTHON2_DEPENDENCIES}

if [[ "$*" =~ "include-debug" ]]; then
    sudo dnf install -y ${DEBUG_DEPENDENCIES}
fi

if [[ "$*" =~ "include-development" ]]; then
    sudo dnf install -y ${DEVELOPMENT_DEPENDENCIES}
fi

if [[ "$*" =~ "include-test" ]]; then
    sudo dnf install -y ${TEST_DEPENDENCIES}
fi

