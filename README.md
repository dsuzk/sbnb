# sbnb
A Branch-and-Bound framework that keeps things simple
## Usage
sbnb has a simple command line interface with a few flags.

sbnb [-d|-b|-e] [-f|-g|-i|-j[-a]] [-v] [-c] file_path
	 -d: Set node selection to 'Depth first traversal' (default)
	 -b: Set node selection to 'Breadth first traversal'
	 -e: Set node selection to 'Best first traversal'
	 -f: Set branching rule to 'First fractional' (default)
	 -g: Set branching rule to 'Close half'
	 -i: Set branching rule to 'Close half expensive'
	 -j: Set branching rule to 'Strong Branching', optional integer argument: number of pseudo nodes(default: 20)
	 -a: For branching rule 'Strong Branching', required float argument alpha(default: 0.9)
	 -v: Enable verbose output
	 -c: Use Cplex Solver
	 file_path: Location of linear problem file (.lp/.mps file formats). REQUIRED 
EXAMPLES:
	 sbnb -bc test/models/sample3.mps
	 sbnb -v test/models/sample10.mps


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

