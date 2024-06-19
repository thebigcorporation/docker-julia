#!/bin/bash
# SPDX-License-Identifier: GPL-2.0#
# allows any julia pkgs included in this build to be precompiled
# with the container, ensuring minimal load times for scripts
julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate()'
