include ../makefile.rules

OBJS = $(FILES:.c=.o)

all: $(EXEC)

$(EXEC) : $(OBJS)
	$(CC) $(LDFLAGS) $^ -o ../$@

%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f *~ *.o
