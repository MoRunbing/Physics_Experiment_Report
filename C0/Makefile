HelloWorld3: main.o print.o
gcc –o HelloWorld3 main.o print.o
main.o: main.c print.h
gcc–c main.c print.h
print.o: print.c print.h
gcc –c print.c print.h
clean:rm –rf *.o*.gch HelloWorld3
#删除后缀名为.o、.gch的所有文件，以及名称为HelloWorld3的文件