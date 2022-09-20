SOURCE	:= gauss_eliminate.c compute_gold.c gauss_pthread.c
CC	:= gcc
TARGET	:= gauss_eliminate
LINK	:= -O3 -Wall -std=c99 -lm -lpthread

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) -o $(TARGET) $(SOURCE) $(LINK)

clean:
	rm -f $(TARGET)