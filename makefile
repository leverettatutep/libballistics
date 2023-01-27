objects = angle.o atmosphere.o ballistics.o example.o pbr.o
#vpath %.h ../include 

all: $(objects)
#	gcc -print-search-dirs
#	dir
#	cd ./output
#	dir
	gcc -B output $(objects) -o example.exe
#	cd ..

%.o : %.c
#	gcc -c $< -I include -o output/$@
	gcc -c $< -I include -o $@

#angle.o : angle.c
#	gcc -c -o output/angle.o angle.c

.PHONY: clean
clean:
	rm *.o *.exe

