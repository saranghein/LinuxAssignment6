FILEO = main.o sosil1.o sosil2.o sosil3.o sosil4.o sosil5.o
FILEC = main.c sosil1.c sosil2.c sosil3.c sosil4.c sosil5.c
FILEH = sosil1.h sosil2.h sosil3.h sosil4.h sosil5.h
assignment : $(FILEO)
	gcc -o $@ $^
main.o : main.c $(FILEH)
sosil1.o : sosil1.h sosil1.c
sosil2.o : sosil2.h sosil2.c
sosil3.o : sosil3.h sosil3.c
sosil4.o : sosil4.h sosil4.c
sosil5.o : sosil5.h sosil5.c
.c.o :
	gcc -c $< $(CFLAGS) 
clean :
	rm -f $(FILEO) assignment

