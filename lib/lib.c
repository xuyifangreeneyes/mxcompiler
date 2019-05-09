#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//
//char* __malloc(long sz) {
//  if (sz >= 128)
//    return malloc(sz);
//
//  const long CHUNK_SIZE = 2048;
//  static char* storage = NULL;
//  static long used = CHUNK_SIZE;
//  if (used + sz > CHUNK_SIZE) {
//    storage = malloc(CHUNK_SIZE);
//    used = 0;
//  }
//
//  char* res = storage + used;
//  used += sz;
//  return res;
//}

void print(char* ptr) {
    printf("%s", ptr + 8);
}

void println(char* ptr) {
    printf("%s\n", ptr + 8);
}

void __printInt(long num) {
    printf("%ld", num);
}

void __printlnInt(long num) {
    printf("%ld\n", num);
}

char* getString() {
    char buffer[1024 * 32];
    scanf("%s", buffer);
    long length = strlen(buffer);
    char* ptr = malloc(8 + length);
    *((long *)ptr) = length;
    strcpy(ptr + 8, buffer);
    return ptr;
}

long getInt() {
    long num;
    scanf("%ld", &num);
    return num;
}

//char* toString(long num) {
//    long length = snprintf(NULL, 0, "%ld", num);
//    char* ptr = malloc(8 + length + 1);
//    snprintf(ptr + 8, length + 1, "%ld", num);
//    ptr[8 + length] = '\0';
//    *((long*)ptr) = length;
//    return ptr;
//}

char* toString(long num) {
    char* ptr = malloc(8 + 24);
    *((long*)ptr) = sprintf(ptr + 8, "%ld", num);
    return ptr;
}

long __stringLength(char* ptr) {
    return *((long*)ptr);
}

char* __stringSubstring(char* ptr, long left, long right) {
    long length = right - left + 1;
    char* sptr = malloc(8 + length + 1);
    *((long*)sptr) = length;
    for (int i = 0; i < length; ++i)
        sptr[8 + i] = ptr[8 + left + i];
    sptr[8 + length] = '\0';
    return sptr;
}

long __stringParseInt(char* ptr) {
    long num = 0;
    int neg = 0;
    ptr += 8;
    if (*ptr == '-') {
        neg = 1;
        ptr++;
    }
    while ('0' <= *ptr && *ptr <= '9') {
        num = num * 10 + (*ptr - '0');
        ptr++;
    }
    return neg ? -num : num;
}

long __stringOrd(char* ptr, long pos) {
    return ptr[8 + pos];
}

char* __stringAdd(char* ptr1, char* ptr2) {
    long len1 = *((long*)ptr1);
    long len2 = *((long*)ptr2);
    char* ptr = malloc(8 + len1 + len2 + 1);
    *((long*)ptr) = len1 + len2;
    for (int i = 0; i < len1; ++i)
        ptr[8 + i] = ptr1[8 + i];
    for (int i = 0; i < len2; ++i)
        ptr[8 + len1 + i] = ptr2[8 + i];
    ptr[8 + len1 + len2] = '\0';
    return ptr;
}

long __stringEq(char* ptr1, char* ptr2) {
    return strcmp(ptr1 + 8, ptr2 + 8) ? 0 : 1;
}

long __stringNeq(char* ptr1, char* ptr2) {
    return strcmp(ptr1 + 8, ptr2 + 8) ? 1 : 0;
}

long __stringLt(char* ptr1, char* ptr2) {
    return strcmp(ptr1 + 8, ptr2 + 8) < 0;
}

long __stringGt(char* ptr1, char* ptr2) {
    return strcmp(ptr1 + 8, ptr2 + 8) > 0;
}

long __stringLe(char* ptr1, char* ptr2) {
    return strcmp(ptr1 + 8, ptr2 + 8) <= 0;
}

long __stringGe(char* ptr1, char* ptr2) {
    return strcmp(ptr1 + 8, ptr2 + 8) >= 0;
}

long __arraySize(char* ptr) {
    return *((long*)(ptr - 8));
}


