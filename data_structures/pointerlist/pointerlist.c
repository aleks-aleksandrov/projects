#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>



//define datatype structure and declare functions
typedef struct Node { 
    int data; 
    struct Node* next; 
}Node; 

int LAST = 0;//store the length of the list

Node * buildLinkedList(char *filename);
void PRINTLIST(Node *n);
void INSERT(Node *node, int item, int position);
void errorMSG();
void DELETE(Node *node, int position);

int END();
int LOCATE(Node *list, int x);
int RETRIEVE(Node *node, int position);
int MAKENULL(Node *node);
int NEXT(Node *node, int position);
int PREVIOUS(Node *node, int position);


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

    Node *head = NULL;
    head = buildLinkedList(argv[1]); //get array from input file and construct linked list

    //Calls the corresponding function for the input arguments
    if(strcmp(argv[2],"FIRST") == 0){
        return 1;
    }
    else if(strcmp(argv[2],"PRINTLIST") == 0){
        printf("Printing list... \n");
        PRINTLIST(head);
    }
    else if(strcmp(argv[2],"RETRIEVE") == 0){
        int position = atoi(argv[3]);
        
        if(position > LAST || position < 1){
            printf("Undefined index \n");
            exit(EXIT_FAILURE);
        }else{
            return RETRIEVE(head, position);
        }  
    }
    else if(strcmp(argv[2],"MAKENULL") == 0){
        printf("Deleting Linked List... \n");
        return MAKENULL(head);
    }
    else if(strcmp(argv[2],"LOCATE") == 0){
        int item = atoi(argv[3]);
        return LOCATE(head, item);  
    }
    else if(strcmp(argv[2],"INSERT") == 0){

        if( argv[3] == NULL || argv[4] == NULL){ //insert requires both position and item arguments
            errorMSG();
        }else{
            int item = atoi(argv[3]);
            int position = atoi(argv[4]);
            
            if(position > END() || position < 1){
                printf("Undefined index %d \n", position);
                exit(EXIT_FAILURE);
            }
            else if(position == 1){//insert at head
                Node * insert = (Node *)malloc(sizeof(Node*));
                insert->data = item;
                insert->next = head; //point to head
                head = insert;
            }else{
                INSERT(head, item, position);
            }
            LAST++;
            PRINTLIST(head);
            exit(EXIT_SUCCESS);
        }

    }
    else if(strcmp(argv[2],"DELETE") == 0){
        int position = atoi(argv[3]);

        if(position == 1){//deleting the head
            Node *temp = head;
            head =  head->next;
            free(head);
        }else if(position >= END() || position <=0 ){//position is outside of array
            printf("Undefined index %d \n", position);
            exit(EXIT_FAILURE);
        }else{
            DELETE(head, position);
        }
        LAST--;
        PRINTLIST(head);
        exit(EXIT_SUCCESS);
    }
    else if(strcmp(argv[2],"NEXT") == 0){
        int position = atoi(argv[3]);
        if(position >= END() || position <=0){
            printf("Undefined index %d \n", position);
            exit(EXIT_FAILURE); 
        }
        return NEXT(head, position);
    }
    else if(strcmp(argv[2],"PREVIOUS") == 0){
        int position = atoi(argv[3]);\
        if(position >= END() || position <=0){
            printf("Undefined index %d \n", position);
            exit(EXIT_FAILURE); 
        }
        return PREVIOUS(head, position);
    }
    else{
        printf("Undefined function! \n");
        exit(EXIT_FAILURE);
    }

    return 0;
}

//----------------------------------------------------Functions--------------------------------------------------------

//Retrieve item at position
int RETRIEVE(Node *node, int position){
    int i = 1;
    while(node != NULL){
        if(i == position){
            printf("Element at position %d = %d \n", position, node->data);
            return node->data;
        }else{
            i++;
            node = node->next;
        }
    }
}

//Empty Linked List
int MAKENULL(Node *node){

    Node * temp = NULL;
    while(node != NULL){
        temp = node;
        node = node->next;
        free(temp);
    }
    LAST = 0;
    return END(); //returns 1
}

//Insert in the middle or at the end of a linked list - END() is also counted as an insertion at the end
void INSERT(Node *node, int item, int position){
    int i = 1;
    Node * insert = (Node *)malloc(sizeof(Node*));;
    insert->data = item;

    if(position == END()){//insert at end
        while(node != NULL){
            if(i == LAST){
                insert->next = NULL;
                node->next = insert;
                break;
            }else{
                i++;
                node = node->next;
            }
        }
    }
    else{
        while(node != NULL){
            if(i == position-1){//insert node
                insert->next = node->next;
                node->next = insert;
                break;
            }else{
                i++;
                node = node->next;
            }
        }
    }
}

//Deletes the node at the position
void DELETE(Node *node, int position){
    Node *temp = NULL;

    if(position >= END()){
        printf("Undefined \n");
        exit(EXIT_FAILURE);
    }else{
        int i = 1;
        while(node != NULL){
            if(i == position){
                temp->next = node->next;
                free(node);
                break;
            }
            else{
                i++;
                temp = node;
                node = node->next;
            }
        }
    }
}

//Locates and returns indexof element x
int LOCATE(Node *node, int x){
    int i = 1;
    while(node != NULL){
        if( node->data == x){
            printf("Element %d is at postion %d \n", x, i);
            return i;
        }else{
            i++;
            node = node->next;
        }
    }
    printf("Item %d not found \n", x);
    return END();
}

//if position is valid returns position + 1
int NEXT(Node *node, int position){
    if(position >= END()){
        printf("Undefined \n");
        exit(EXIT_FAILURE);
    }else{
        if(position == LAST){
            return END();
        }else{
            return position + 1;
        }
    }
}

//if position is valid returns position 1 1
int PREVIOUS(Node *node, int position){
    if(position >= END() || position == 1){
        printf("Undefined \n");
        exit(EXIT_FAILURE);
    }else{
        return position - 1;
    }
}

int END(){
    return LAST + 1;
}

void PRINTLIST(Node* n) 
{ 
    while (n != NULL) { 
        printf("%d ", n->data); 
        n = n->next; 
    }
    printf("\n"); 
} 

//Builds Linked List out of input file
Node * buildLinkedList(char *filename){

    //Open File for values
    FILE *fd;
    fd = fopen(filename, "rd");
    if(fd == NULL)
    {
        printf("Failed Opening %s! \n", filename);   
        exit(EXIT_FAILURE);             
    }

    //Generate Linked List
    Node * head = NULL;
    Node * temp = NULL;
    Node * p = NULL;
    int current_int;
    int i = 1;

    while(fscanf(fd, "%d,", &current_int) != -1){ 
        i++;
        temp = (Node *)malloc(sizeof(Node*));
        temp->data = current_int;
        temp->next = NULL;

        if(head == NULL){//if linked list is still empty
            head = temp;
        }else{
            p = head;
            while(p->next != NULL){
                p = p->next;
            }
            p->next = temp;
        }
    }
    fclose(fd);
    LAST = i - 1;
    return head;
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