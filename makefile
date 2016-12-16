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

COMPILER_FLAGS = -m64 -O -fPIC -fno-strict-aliasing -fexceptions -g -DNDEBUG -DIL_STD -std=c++11

ifeq ($(PLATFORM), Darwin)
	COMPILER_FLAGS += -stdlib=libstdc++
endif

# ---------------------------------------------------------------------
# Link options and libraries
# ---------------------------------------------------------------------
INCLUDE_DIR = include
LIB_DIR = lib

CPLEX_LIB_FORMAT  = static_pic

CPLEX_LIB_DIR   = $(CPLEX_DIR)/lib/$(SYSTEM)/$(CPLEX_LIB_FORMAT)
CONCERT_LIB_DIR = $(CONCERT_DIR)/lib/$(SYSTEM)/$(CPLEX_LIB_FORMAT)

CONCERT_INCLUDE_DIR = $(CONCERT_DIR)/include
CPLEX_INCLUDE_DIR   = $(CPLEX_DIR)/include

GTEST_LIB_FLAG = -lgtest_main -lpthread

LIB_FLAGS  = -L$(CPLEX_LIB_DIR) -L$(CONCERT_LIB_DIR) -L$(LIB_DIR) -lconcert -lilocplex -lcplex -lm -lpthread
INCLUDE_FLAGS = -isystem $(CPLEX_INCLUDE_DIR) -isystem $(CONCERT_INCLUDE_DIR) -isystem $(INCLUDE_DIR) -Isrc -Itest

# ---------------------------------------------------------------------
# Files to include
# ---------------------------------------------------------------------

TARGET_DIR := bin
TARGET := $(TARGET_DIR)/sbnb
TEST_TARGET := $(TARGET_DIR)/test
SRC_EXTENSION := cc
SRC_DIR := src
BUILD_DIR := build
TEST_DIR := test
GTEST_DIR := googletest/googletest
DOXY_CONFIG := doxyconfig

SOURCES := $(filter-out $(SRC_DIR)/main.$(SRC_EXTENSION), $(shell find $(SRC_DIR) -name '*.$(SRC_EXTENSION)'))
OBJECTS := $(patsubst $(SRC_DIR)/%, $(BUILD_DIR)/%, $(SOURCES:.$(SRC_EXTENSION)=.o))

TESTS := $(shell find $(TEST_DIR) -name '*.$(SRC_EXTENSION)')
TEST_OBJECTS := $(patsubst $(TEST_DIR)/%, $(BUILD_DIR)/%, $(TESTS:.$(SRC_EXTENSION)=.o))

# ---------------------------------------------------------------------
# Targets
# ---------------------------------------------------------------------

all: sbnb test

sbnb: $(TARGET)

test: gtest $(TEST_TARGET)
	./$(TEST_TARGET)
gtest:
	@echo "Compiling googletest framework...";
	@git submodule update --init --recursive
	@make -C $(GTEST_DIR)/make
	@mkdir -p $(LIB_DIR)
	@cp $(GTEST_DIR)/make/gtest_main.a $(LIB_DIR)/libgtest_main.a

clean:
	@echo "Cleaning...";
	$(RM) -r $(BUILD_DIR) $(TARGET_DIR)

clean_gtest:
	@make -C $(GTEST_DIR)/make clean

docu:
	doxygen $(DOXY_CONFIG)

.PHONY: all test docu

# ---------------------------------------------------------------------
# Compile excecutable binary and testcases
# ---------------------------------------------------------------------

$(TARGET): $(OBJECTS) $(BUILD_DIR)/main.o
	@echo "Linking $(TARGET)..."
	@mkdir -p $(TARGET_DIR)
	@echo " "$(COMPILER) $@
	@$(COMPILER) $(COMPILER_FLAGS) $^ -o $@ $(LIB_FLAGS)

$(TEST_TARGET): $(OBJECTS) $(TEST_OBJECTS)
	@echo "Linking $(TEST_TARGET)..."
	@mkdir -p $(TARGET_DIR)
	@echo " "$(COMPILER) $@
	@$(COMPILER) $(COMPILER_FLAGS) $^ -o $@ $(LIB_FLAGS) $(GTEST_LIB_FLAG)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.$(SRC_EXTENSION)
	@echo "Building sources..."
	@mkdir -p $(dir $@)
	@echo " "$(COMPILER) $@
	@$(COMPILER) $(COMPILER_FLAGS) $(INCLUDE_FLAGS) -c -o $@ $<

$(BUILD_DIR)/%.o: $(TEST_DIR)/%.$(SRC_EXTENSION)
	@echo "Building tests..."
	@mkdir -p $(dir $@)
	@echo " "$(COMPILER) $@
	@$(COMPILER) $(COMPILER_FLAGS) $(INCLUDE_FLAGS) -c -o $@ $<
