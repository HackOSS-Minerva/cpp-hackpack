CXX ?= g++
CXXFLAGS ?= -std=c++20 -Wall -Wextra -Wpedantic -O2 -Isrc

BUILD_DIR = build
TARGET = $(BUILD_DIR)/calculator

SRCS = $(wildcard src/calculator/*.cpp)
HEADERS = $(wildcard src/calculator/*.hpp)
OBJS = $(patsubst src/calculator/%.cpp,$(BUILD_DIR)/%.o,$(SRCS))

.PHONY: all build run format check-format lint clean

all: build

build: $(TARGET)

$(TARGET): $(OBJS)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(BUILD_DIR)/%.o: src/calculator/%.cpp $(HEADERS)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

run: build
	./$(TARGET)

format:
	clang-format -i $(SRCS) $(HEADERS)

check-format:
	clang-format --dry-run --Werror $(SRCS) $(HEADERS)

lint:
	clang-tidy $(SRCS) -- $(CXXFLAGS)

clean:
	rm -rf $(BUILD_DIR)
