DIR=src
LIBS=-lm
OBJS=$(patsubst %.c,%.o,$(DIR)/convertabc4.c) $(patsubst %.c,%.o,$(DIR)/mylib.c)

all: nexus2table

nexus2table: $(OBJS)
	$(CXX) $(OBJS) -o $@.exe $(LIBS)

clean:
	rm $(wildcard $(DIR)/*.o) nexus2table.exe

