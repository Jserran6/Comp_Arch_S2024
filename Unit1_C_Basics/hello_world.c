// Josue Serrano Rodriguez

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char* argv[]) {
    printf("Hello World!");
    printf(":))\n");
    printf("%d) option %s", 1, "ONE");

    // statically typed
    int number = 32;
    char phrase[20] = "Hello World!";

    //for(int x = 0; x < NUMBER; x++) {
        // do something
    //}

    //int functionName(variable name){
        // do something
    //}

    int whole_number = 42;
    int* whole_number_pointer = &whole_number;

    *whole_number_pointer = 21;

    printf("\n\n%d", whole_number);
    printf("\n%d", *whole_number_pointer);
    printf("\n%p", whole_number_pointer);

    printf("\n\nbytes in int: %ld", sizeof(int));

    whole_number_pointer += 1;
    printf("\n\n%p", whole_number_pointer);

    int* malloced_int = (int*) malloc(sizeof(int));

    double* malloced_double = (double*) malloc(sizeof(double));
    *malloced_double = 102.45;
    printf("\n\n%lf", *malloced_double);

    free(malloced_double);

    int* bad_pointer = (int*) 42;
    printf("%d", *bad_pointer);

    int num;
    printf("prompt! ");
    scanf("%d", &num);

    int* array = (int*) calloc(5, sizeof(int));

    // update element at index 3
    // array[3]
    *(array + 3) = 56;

    return 0; //no errors
}