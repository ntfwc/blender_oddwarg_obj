# Description

This is a modified version of the standard Blender obj addon. It aims to preserve some of the extra information included in a variant of obj used by many of Oddwarg's games. This extra information is provided in comments that other obj importers would ignore.

# Features

Supports the following extended information:

* Vertex group data

# Installation

This addon does not conflict with the standard obj addon. It can be added through a zip file or manually by placing it in a directory within one of the addon directories (local or system wide).

# Usage

When enabled, this adds a new import option "Wavefront, with oddwarg extensions". It should work a lot like the standard import option. Note that "Keep Vert Order" is default. Using "Split" will scramble the vertex groups, and should be avoided, at least for now.
