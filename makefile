CC=mpic++
CFLAGS=-I 
LIBS=
DEPS =
OBJ = hello.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

hello: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

test1: $(OBJ)
	 mpirun -np 4 ./hello
clean:
	rm -rf *o  test main  
