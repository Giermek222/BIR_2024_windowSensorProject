#ifndef POINTER_QUEUE_H
#define POINTER_QUEUE_H

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#define MAX_QUEUE_SIZE 5 // Maximum number of elements in the queue

typedef struct {
    uint8_t* data[MAX_QUEUE_SIZE]; // Array to store pointers to uint8_t arrays
    int front;                     // Index of the front element
    int rear;                      // Index of the rear element
    int size;                      // Number of elements in the queue
} PointerQueue;

// Function prototypes
void initQueue(PointerQueue* queue);
int isFull(PointerQueue* queue);
int isEmpty(PointerQueue* queue);
int enqueue(PointerQueue* queue, uint8_t* element);
uint8_t* dequeue(PointerQueue* queue);

#endif // POINTER_QUEUE_H
