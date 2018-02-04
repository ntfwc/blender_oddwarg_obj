#!/bin/sh
SCRIPT_DIR=$(dirname "$0")
SCRIPT_DIR=$(readlink -f "$SCRIPT_DIR")

ADDON_DIR_NAME=io_oddwarg_obj

set -e

cd /tmp
mkdir "$ADDON_DIR_NAME"

finally()
{
	rm -r /tmp/"$ADDON_DIR_NAME"
}
trap finally EXIT

cp "$SCRIPT_DIR"/*.py "$ADDON_DIR_NAME"
cp "$SCRIPT_DIR"/README.md "$ADDON_DIR_NAME"

OUTFILE="$ADDON_DIR_NAME.zip"
[ ! -e "$OUTFILE" ] || rm "$OUTFILE"
zip -r "$ADDON_DIR_NAME.zip" "$ADDON_DIR_NAME"
