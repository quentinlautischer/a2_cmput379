CC = gcc
CFLAGS = -Wall
MEMFLAGS = -DMEMWATCH -DMW_STDIO

INCLUDES = -I memwatch-2.71/ memwatch-2.71/memwatch.c

TARGET = procnanny

SRC = src/$(TARGET).c		\
		src/childNanny.c 	\
		src/clerkNanny.c 	\
		src/clientNanny.c 	\

all: $(TARGET)

$(TARGET): 
	$(CC) $(CFLAGS) $(MEMFLAGS) $(INCLUDES) -o bin/$(TARGET) $(SRC) 


clean:
	$(RM) $(TARGET)
