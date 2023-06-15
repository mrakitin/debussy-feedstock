#!/bin/bash

set -e

test -d m4 || mkdir m4
# gtkdocize || exit 1

export ACLOCAL_PATH="$PREFIX/share/aclocal"
aclocal --print-ac-dir

echo -e "$PREFIX\ny\ny\ny\n" | ./install_debussy_v2.2
