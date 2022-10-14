HEADERS_DIR=src/headers
CPP_DIR=src
BUILD_DIR=build
CC=g++

# build an executable called "jabber" by default (since it's the first build option listed) when running just "make" by itself
jabber:
	@echo "Building jabber.."
	@$(CC) -o $(BUILD_DIR)/jabber -I$(HEADERS_DIR) $(CPP_DIR)/*.cpp && echo "Jabber built successfully!"

#.PHONY means don't operate on a file called "clean" when running the "clean" option below
.PHONY: clean

# used to clean up the current directory so build files and executables aren't all over the place (usage: "make clean")
clean:
	@echo "Removing build files and executables.."
	@-rm --force $(BUILD_DIR)/jabber && echo "Build files and executables removed!"
