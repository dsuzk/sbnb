#------------------------------------------------------------
# System Info
#------------------------------------------------------------

PLATFORM := $(shell uname)
ifeq ($(PLATFORM), Darwin)
	SYSTEM = x86-64_osx
else ifeq ($(PLATFORM), Linux)
	SYSTEM = x86-64_linux
else
	$(error No project configuration for your platform)
endif

#------------------------------------------------------------
# CPlex dirs
#------------------------------------------------------------

CPLEX_DIR      = /vol/informatik/ilog/cplex1263
CONCERT_DIR    = /vol/informatik/ilog/concert

# ---------------------------------------------------------------------
# Compiler selection
# ---------------------------------------------------------------------

COMPILER = g++

# ---------------------------------------------------------------------
# Compiler options
# ---------------------------------------------------------------------

COMPILER_FLAGS = -m64 -O -fPIC -fno-strict-aliasing -fexceptions -DNDEBUG -DIL_STD

ifeq ($(PLATFORM), Darwin)
	COMPILER_FLAGS += -stdlib=libstdc++
endif

# ---------------------------------------------------------------------
# Link options and libraries
# ---------------------------------------------------------------------

CPLEX_LIB_FORMAT  = static_pic

CPLEX_LIB_DIR   = $(CPLEX_DIR)/lib/$(SYSTEM)/$(CPLEX_LIB_FORMAT)
CONCERT_LIB_DIR = $(CONCERT_DIR)/lib/$(SYSTEM)/$(CPLEX_LIB_FORMAT)

CONCERT_INCLUDE_DIR = $(CONCERT_DIR)/include
CPLEX_INCLUDE_CDIR   = $(CPLEX_DIR)/include

LIB_FLAGS  = -L$(CPLEX_LIB_DIR) -L$(CONCERT_LIB_DIR) -lconcert -lilocplex -lcplex -lm -lpthread
INCLUDE_FLAGS = -I$(CPLEX_INCLUDE_CDIR) -I$(CONCERT_INCLUDE_DIR)

# ---------------------------------------------------------------------
# Files to include
# ---------------------------------------------------------------------

TARGET_DIR := bin
TARGET := $(TARGET_DIR)/bnb
SRC_EXTENSION := cpp
SRC_DIR := src
BUILD_DIR := build

SOURCES := $(wildcard $(SRC_DIR)/*.$(SRC_EXTENSION))
OBJECTS := $(patsubst $(SRC_DIR)/%, $(BUILD_DIR)/%, $(SOURCES:.$(SRC_EXTENSION)=.o))

# ---------------------------------------------------------------------
# Compile excecutable binary
# ---------------------------------------------------------------------

$(TARGET): $(OBJECTS)
	@mkdir -p $(TARGET_DIR)
	@echo " Linking..."
	$(COMPILER) $(COMPILER_FLAGS) $^ -o $(TARGET) $(LIB_FLAGS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.$(SRC_EXTENSION)
	@echo " Building..."
	@mkdir -p $(BUILD_DIR)

	$(COMPILER) $(COMPILER_FLAGS) $(INCLUDE_FLAGS) -c -o $@ $<

clean:
	@echo " Cleaning...";
	$(RM) -r $(BUILD_DIR) $(TARGET)
