# Makefile for Penance build process

.PHONY: all game clean rebuild help

# Detect operating system and set build parameters
ifeq ($(OS),Windows_NT)
    DETECTED_OS := Windows
    EXECUTABLE := ./build/Debug/Penance.exe
    BUILD_TYPE := Debug
else
    DETECTED_OS := $(shell uname -s)
    EXECUTABLE := ./build/Penance
    BUILD_TYPE := Release
endif

# Default target
all: game

# Main build target
game:
	@echo "Configuring CMake project for $(BUILD_TYPE) build..."
	cmake -S . -B build -DCMAKE_BUILD_TYPE=$(BUILD_TYPE)
	@echo "Building project..."
	cmake --build build
	@echo "Running the game on $(DETECTED_OS)..."
	$(EXECUTABLE)

# Clean build artifacts
clean:
	@echo "Cleaning build directory..."
	rm -rf build

# Rebuild from scratch
rebuild: clean game

# Help target to show available commands
help:
	@echo "Available targets:"
	@echo "  make game    - Configure, build and run the game (default)"
	@echo "  make all     - Same as 'make game'"
	@echo "  make clean   - Remove build directory"
	@echo "  make rebuild - Clean and rebuild from scratch"
	@echo "  make help    - Show this help message"
	@echo ""
	@echo "Detected OS: $(DETECTED_OS)"
	@echo "Build type: $(BUILD_TYPE)"
	@echo "Executable path: $(EXECUTABLE)"
