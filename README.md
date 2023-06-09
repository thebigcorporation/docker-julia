# Docker / Julia

Authors: Sven-Thorsten Dietrich <sxd1425@miami.edu> 
& Kyle Scott <kms309@miami.edu>

This code is made available under the GPL-2.0 license.
Please see the LICENSE file for details.

This container packages Julia & some useful analysis packages and can 
used as base for containers running Julia code.

To run a .jl file located in the local directory on your system,
execute the following command:

`docker run -it -v "/local/path/to/jl:"/app":shared,ro,z \
	hihg-um/${USER}/julia /app/`

The container will automatically enter the julia REPL, where users
can enter the package manager with `]` and activate the julia environment
as packaged with the container with `activate .`

To utilize the environment feature inside a julia script,
include the following at the top of your julia script:

`using Pkg; Pkg.activate('.')`
