CFLAGS   = -Wall -Wextra -mtune=native `sdl2-config --cflags`
LDFLAGS  = `sdl2-config --libs` -lSDL2_image -lm -lGL -lGLU -lGLEW 

.SUFFIXES:
.SUFFIXES: .c .o

srcdir	 =./
TARGETS	 = 1

.PHONY: all
all: $(TARGETS)

1: $(srcdir)nanovg.c $(srcdir)1.c
	$(CC) $(CFLAGS) -o $@ $+ $(LDFLAGS)

.PHONY: clean
clean:
	@rm $(TARGETS) 2>/dev/null || true

