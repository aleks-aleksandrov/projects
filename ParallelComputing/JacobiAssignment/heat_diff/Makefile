SOURCE	:= solver.c solver_gold.c solver_pthread.c
CC	:= gcc
TARGET	:= solver
LINK	:= -O3 -Wall -std=c99 -lm -lpthread

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) -o $(TARGET) $(SOURCE) $(LINK)

clean:
	rm -f $(TARGET)