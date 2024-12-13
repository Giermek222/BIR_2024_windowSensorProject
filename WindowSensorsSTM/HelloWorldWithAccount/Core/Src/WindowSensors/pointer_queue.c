#include "pointer_queue.h"

void initQueue(PointerQueue* queue) {
    queue->front = 0;
    queue->rear = -1;
    queue->size = 0;
}

int isFull(PointerQueue* queue) {
    return queue->size == MAX_QUEUE_SIZE;
}

int isEmpty(PointerQueue* queue) {
    return queue->size == 0;
}

int enqueue(PointerQueue* queue, uint8_t* element) {
    if (isFull(queue)) {
        printf("Queue is full! Cannot enqueue.\n");
        return 0;
    }
    queue->rear = (queue->rear + 1) % MAX_QUEUE_SIZE;
    queue->data[queue->rear] = element;
    queue->size++;
    return 1;
}

uint8_t* dequeue(PointerQueue* queue) {
    if (isEmpty(queue)) {
        printf("Queue is empty! Cannot dequeue.\n");
        return NULL;
    }
    uint8_t* element = queue->data[queue->front];
    queue->front = (queue->front + 1) % MAX_QUEUE_SIZE;
    queue->size--;
    return element;
}

