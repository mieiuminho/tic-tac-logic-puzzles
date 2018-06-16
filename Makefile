CC         = gcc
CFLAGS     = -std=c11 -O2 -Wall -Wextra -pedantic -g
OBJS       = $(patsubst %.c,%.o,$(wildcard $(SRCDIR)/*.c))
SRCDIR     = src
EXECUTAVEL = gerar

$(EXECUTAVEL): $(OBJS)
	$(CC) -o $(EXECUTAVEL) $(OBJS)

clean:
	@echo "Cleaning..."
	@echo ""
	@curl https://raw.githubusercontent.com/nelsonmestevao/spells/master/art/maid.ascii
	@rm -rf *.o $(EXECUTAVEL) Doxyfile latex html easy/*.txt hard/*.txt
	@echo ""
	@echo "...✓ done!"
