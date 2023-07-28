#!/bin/bash

set -e

test -d m4 || mkdir m4
# gtkdocize || exit 1

export ACLOCAL_PATH="$PREFIX/share/aclocal"
aclocal --print-ac-dir

cd UNIX/DEBUSSY_v2.2
echo -e "$PREFIX\ny\ny\ny\n" | ./install_debussy_v2.2

echo -e "\nCHECKING EPDL97.inc\n"
cat $SRC_DIR/UNIX/DEBUSSY_v2.2/MAKING_gfortran/EPDL97.inc
echo -e "\nEND CHECKING EPDL97.inc\n"

