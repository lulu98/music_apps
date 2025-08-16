BUILD_DIR := build
TARGET := hello

all: $(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/$(TARGET): CMakeLists.txt main.cpp
	@mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake ..
	cd $(BUILD_DIR) && cmake --build .

run: all
	./$(BUILD_DIR)/$(TARGET)

clean:
	rm -rf $(BUILD_DIR)
