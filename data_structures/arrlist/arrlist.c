#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

//maxiumum array size - fixed
#define MAX_SIZE 100

//define datatype structure and declare functions
typedef struct LIST
{
    int array[MAX_SIZE];
    int last;
}LIST;

void extractTestArray(LIST *list, char *filename);
void PRINTLIST(LIST *list);
int END(LIST *list);
int LOCATE(LIST *list, int x);
int INSERT(LIST *list, int item, int position);
void DELETE(LIST *list, int position);
int NEXT(LIST *list, int position);
int PREVIOUS(LIST *list, int position);
void errorMSG();

/* Main function - takes the user input, opens the file containing the string of comma-separated integers,
retrieves the array and executes the corresponding function.
*/
int main(int argc, char** argv){
    
    //checks usage correctness
    if(argc < 3){
        errorMSG();
    }
    if( ((strcmp(argv[2],"RETRIEVE") == 0) || 
        (strcmp(argv[2],"LOCATE") == 0) || 
        (strcmp(argv[2],"DELETE") == 0) || 
        (strcmp(argv[2],"NEXT") == 0) || 
        (strcmp(argv[2],"PREVIOUS") == 0)) && argv[3] == NULL)
    {
        printf("ARGV3 = %s \n", argv[3]);
        errorMSG();
    }

    LIST *list = (LIST *)malloc(sizeof(LIST));
    extractTestArray(list, argv[1]); //get array from input file

    //Calls the corresponding function for the input arguments
    if(strcmp(argv[2],"FIRST") == 0){

        if(list->last = 0){//if list is empty
            return END(list);
        }else{
            return 1;
        }
    }
    else if(strcmp(argv[2],"PRINTLIST") == 0){
        printf("Printing list... \n");
        PRINTLIST(list);
    }
    else if(strcmp(argv[2],"RETRIEVE") == 0){
        
        int indx = atoi(argv[3]);
        if(indx > list->last){
            printf("Provided index is outside of thge array size (%d)! \n", list->last);
            exit(EXIT_FAILURE);
        }else{
            printf("Element at position %d: %d \n", indx, list->array[indx]);
            return list->array[indx];
        }  
    }
    else if(strcmp(argv[2],"MAKENULL") == 0){

        for(int i = 1; i <= list->last; i++){
            list->array[i] = 0;
        }
        list->last = 0;
        printf("%d \n", END(list));
        return END(list);
    }
    else if(strcmp(argv[2],"LOCATE") == 0){

        int item = atoi(argv[3]);
        return LOCATE(list, item);  
    }
    else if(strcmp(argv[2],"INSERT") == 0){

        if( argv[3] == NULL || argv[4] == NULL){ //insert requires both position and item arguments
            errorMSG();
        }else{
            int item = atoi(argv[3]);
            int position = atoi(argv[4]);
            INSERT(list, item, position);
            printf("New list... \n");
            PRINTLIST(list);
            exit(EXIT_SUCCESS);
        }
    }
    else if(strcmp(argv[2],"DELETE") == 0){
        int position = atoi(argv[3]);
        DELETE(list, position);
    }
    else if(strcmp(argv[2],"NEXT") == 0){
        int position = atoi(argv[3]);
        return NEXT(list, position);
    }
    else if(strcmp(argv[2],"PREVIOUS") == 0){
        int position = atoi(argv[3]);
        return PREVIOUS(list, position);
    }
    else{
        printf("Undefined function! \n");
        exit(EXIT_FAILURE);
    }

    return 0;
}

//----------------------------------------------------Functions--------------------------------------------------------

int INSERT(LIST *list, int item, int position){

    if(position == END(list)){
        list->array[END(list)] = item;
        list->last++;
    }else if (position > END(list)){
        printf("Undefined \n");
        exit(EXIT_FAILURE);
    }else{
        //Shift items after the position
        int store_val = 0, temp = 0;
        store_val = list->array[position]; //store previous item at the index
        list->array[position] = item;

        for(int i = position+1; i <= list->last + 1; i++){
            temp = list->array[i];
            list->array[i] = store_val;
            store_val = temp;
        }
        list->last++;
    }
}

void DELETE(LIST *list, int position){

    if(position >= END(list)){
        printf("Undefined \n");
        exit(EXIT_FAILURE);

    }else{

        if(position == list->last){//deleting last element
            list->array[position] = 0;
        }else{//deleting any other element - shift array after position
            for(int i = position; i< list->last; i++){
                list->array[i] =  list->array[i+1];
            }
        }
        list->last--;
        PRINTLIST(list);
        exit(EXIT_SUCCESS);
    }
}

int LOCATE(LIST *list, int x){

    for(int i = 1; i <= list->last; i++){
        if(list->array[i] == x){
            printf("Item %d found at index %d \n", x, i);
            return i;
        }
    }
    printf("Item %d not found \n", x);
    return END(list);
}

int NEXT(LIST *list, int position){
    if(position >= END(list)){
        printf("Undefined \n");
        exit(EXIT_FAILURE);
    }else{
        if(position == list->last){
            return END(list);
        }else{
            return position + 1;
        }
    }
}

int PREVIOUS(LIST *list, int position){
    if(position >= END(list) || position == 1){
        printf("Undefined \n");
        exit(EXIT_FAILURE);
    }else{
        return position - 1;
    }
}

int END(LIST *list){
    return list->last + 1;
}

void PRINTLIST(LIST *list){

    for (int i = 1; i <= list->last; i++){
        printf("%d ", list->array[i]); 
    }
    printf("\n");

}

void extractTestArray(LIST *list, char *filename){

    FILE *fd;
    fd = fopen(filename, "rd");
    if(fd == NULL)
    {
        printf("Failed Opening %s! \n", filename);   
        exit(EXIT_FAILURE);             
    }

    int i = 1;
    while(fscanf(fd, "%d,", &list->array[i]) != -1){ //get integers from file
        i++;
    }
    list->last = i-1; //store last position

    fclose(fd);
}

void errorMSG(){
    printf("Incorrect use of arrlist.c \n ");
    printf("\n");
    printf("Use: ./arrlist [arrayfile] [function] *[item] *[position] \n");
    printf("*[] arguments are optional depending on the function \n");
    printf("Functions: \n");
    printf("\n");
    printf("FISRT                    - retireves first position of list\n");
    printf("INSERT [item] [position] - inserts item at position and prints new list\n");
    printf("LOCATE [item]            - retireves item position\n");
    printf("RETRIEVE [position]      - retireves item at position\n");
    printf("DELETE [position]        - deletes item at position and prints new list\n");
    printf("NEXT [position]          - retireves next position\n");
    printf("PREVIOUS [position]      - retireves previous position\n");
    printf("MAKENULL                 - empties list and returns END(list)\n");
    printf("PRINTLIST                - prints list\n");
    exit(EXIT_FAILURE);
}