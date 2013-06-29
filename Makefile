# Andrew Huang <bluedrum@163.com>
CC = gcc
AR = ar rcv
ifeq ($(windir),)
EXE =
RM = rm -f
else
EXE = .exe
RM = del
endif



all: mkbootimg$(EXE) unpackbootimg$(EXE)

mkbootimg$(EXE):mkbootimg.o
	$(CC) -o $@ $^ -L. -lcrypto

mkbootimg.o:mkbootimg.c
	$(CC) -o $@ -c $< -I.


unpackbootimg$(EXE):unpackbootimg.o
	$(CC) -o $@ $^ -lcrypto

unpackbootimg.o:unpackbootimg.c
	$(CC) -o $@ -c $< 

clean:
	$(RM) mkbootimg mkbootimg.o unpackbootimg unpackbootimg.o      mkbootimg.exe    unpackbootimg.exe 


		


	
