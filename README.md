# sbnb
A Branch-and-Bound framework that keeps things simple
## Usage
sbnb has a simple command line interface with a few flags.

    sbnb [-d|-b] [-f] [-v] [-c] file_path
        -d: Set node selection to 'Depth first traversal' (default)
        -b: Set node selection to 'Breadth first traversal'
        -f: Set branching rule to 'First fractional' (default)
        -v: Enable verbose output
        -c: Compare with Cplex Solver
        file_path: Location of linear problem file (.lp/.mps file formats). REQUIRED

Examples:

    $ sbnb -bc test/models/sample3.mps
    $ sbnb -v test/models/sample10.mps

## Installation
Clone the git repository to your local hard drive and build the
project with `make` or `cmake`.

    $ git clone https://github.com/dsuzk/sbnb.git
    $ cd sbnb
    $ make
 
 The excecutable then can be found in the `/bin` directory.
 
## Requirements
sbnb is designed to have minimal requirements and dependencies.

It only requires *IBM ILOG CPLEX Optimization Studio* to be
installed at the following directories: 
```
CPLEX       = /vol/informatik/ilog/cplex1263
CONCERT     = /vol/informatik/ilog/concert
```
Alternatively you can change the according paths for the linker in the
`Makefile`.

sbnb currently works under Linux and Mac OS.

