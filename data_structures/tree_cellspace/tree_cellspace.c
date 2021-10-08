#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>


//define datatype structure and declare functions
typedef struct Cell { 
    int left_child;
    int right_sibling;
    char *label;
}Cell; 

//A linked list of Cellspaces
typedef struct Node { 
    struct Cell* cell;
    struct Node* next; 
}Node; 


int root_indx; //Store the root of the tree

int cellspace_size;
Node * buildLinkedList(char *filename);
void errorMSG();
void printf_cellspace(Node* n); //print linked list 
int leftmost_child(Node*n, int node);
int right_sibling(Node*n, int node);
char* label(Node*n, int node);
int MAKENULL(Node *node);

int find_root(Node *node);

int createi(Node *head, char *v_root, int root_children[], int num);
int append(Node *node, char *filename);
/* Main function - takes the user input, opens the file containing the string of comma-separated integers,
retrieves the array and executes the corresponding function.
*/
int main(int argc, char** argv){
    
    //checks usage correctness
    if(argc < 2){
        errorMSG();
    }
    if( ((strcmp(argv[2],"leftmost_child") == 0) || 
        (strcmp(argv[2],"right_sibling") == 0) || 
        (strcmp(argv[2],"label") == 0) || 
        (strcmp(argv[2],"createi") == 0)) && argv[3] == NULL)
    {
        printf("ARGV3 = %s \n", argv[3]);
        errorMSG();
    }

    Node *head = NULL;
    head = buildLinkedList(argv[1]); //get array from input file and construct linked list
    int node = 0;

    root_indx = find_root(head);//identify the root in the tree

    //printf_cellspace(head);


    if(strcmp(argv[2],"leftmost_child") == 0){
        int node = atoi(argv[3]);
        int result = leftmost_child(head, node);
        if(result == -1){
            printf("Could not find leftmost child of node %d\n", node);
            exit(EXIT_FAILURE);
        }else{
            printf("%d \n", result);
            return result;
        }
    }
    else if(strcmp(argv[2],"right_sibling") == 0){
        int node = atoi(argv[3]);
        int result = right_sibling(head, node);
        if(result == -1){
            printf("Could not find right child of node %d\n", node);
            exit(EXIT_FAILURE);
        }else{
            printf("%d \n", result);
            return result;
        }
    }
    else if(strcmp(argv[2],"label") == 0){
        int node = atoi(argv[3]);
        char* result = label(head, node);

        printf("%s \n", result);
        exit(EXIT_SUCCESS);
        
    }
    else if(strcmp(argv[2],"createi") == 0){
        char *v_root = malloc(sizeof(argv[3])); 
        strcpy(v_root, argv[3]);

        int i = 0, n = 0;
        int new_tree_root;
        int root_children[100]; //store the children 


        for(i=4; i<argc; i++){
            char *tree = argv[i];//tree file
            root_children[n] = append(head, tree);//store the added tree roots
            n++;
        }

        int result = createi(head, v_root, root_children, n-1); //returns the new root node
        printf("%d \n", result);
        printf_cellspace(head);
        return result;
    }
    else if(strcmp(argv[2],"root") == 0){
        printf("%d\n", root_indx);
    }
    else if(strcmp(argv[2],"makenull") == 0){
        MAKENULL(head);
        exit(EXIT_SUCCESS);
    }
    else{
        printf("Undefined function! \n");
        exit(EXIT_FAILURE);
    }

    // printf("Size = %d \n", cellspace_size);
    return 0;
}

//----------------------------------------------------Functions--------------------------------------------------------
//returns the root of the initial tree
int find_root(Node *node){
    int nodes[cellspace_size];
    int i = 1;
    for(i=1; i<=cellspace_size; i++){
        nodes[i] = 1;
    }

    while (node != NULL) {
        if(node->cell->left_child != 0){
            nodes[node->cell->left_child] = 0;
        }
        if(node->cell->right_sibling != 0){
            nodes[node->cell->right_sibling] = 0;
        }
        node = node->next; 
    }

    for(i=1; i<=cellspace_size; i++){
        if(nodes[i]){
            return i;
        }
    }
}

//returns the label of node
char* label(Node*n, int node){
    int i = 1;
    while (n != NULL) {
        if(i == node){
            return n->cell->label;
        }
        i++; 
        n = n->next; 
    }
    printf("Could not find label of node %d\n", node);
    exit(EXIT_FAILURE);
}

int leftmost_child(Node*n, int node){
    int i = 1;
    while (n != NULL) {
        if(i == node){
            return n->cell->left_child;
        }
        i++; 
        n = n->next; 
    }
    return -1;
}

int right_sibling(Node*n, int node){
    int i = 1;
    while (n != NULL) {
        if(i == node){
            return n->cell->right_sibling;
        }
        i++; 
        n = n->next; 
    }
    return -1;
}

//prints the linked list with the tree nodes - used for testing
void printf_cellspace(Node* n) 
{ 
    printf("Left Child - Label - Right Child\n");
    while (n != NULL) { 
        printf("%d - ", n->cell->left_child);
        printf("%s - ", n->cell->label);  
        printf("%d ", n->cell->right_sibling); 
        printf("\n");
        n = n->next; 
    }
    printf("\n"); 
}

int MAKENULL(Node *node){

    Node * temp = NULL;
    while(node != NULL){
        temp = node;
        node = node->next;
        free(temp);
    }
    return 1;
}

//Creates a new root and appends the new tree roots the main tree
//Changes left child of root and right sibling of the appended roots of trees
int createi(Node *head, char *v_root, int root_children[], int num){
    int i = 0, p = 1;

    
    //Create and append a new root in the linked list
    //Create Root Node
    Node*n = head;
    Node* root = (Node *)malloc(sizeof(Node*));
    Cell *root_cell = (Cell *)malloc(sizeof(Cell*));//malloc new cell space struct
    
    strcpy(root_cell->label, v_root);
    root_cell->right_sibling = 0;

    root->cell = root_cell;
    root->next = NULL;

    //set leftmost child to be the original tree (0)
    while (n != NULL) { 
        if(p == root_indx){ //found an appended root
            root_cell->left_child = root_indx;
            break;
        }
        n = n->next; 
        p++;
    }
    n = head;
    //insert new root at the back
    while(n->next != NULL){
        n = n->next;
    }
    n->next = root;
    cellspace_size++;
    
    //Change the right children for the newly added children of the tree
    for(i = 0; i < num; i++){
        
        int root_indx = root_children[i];//find the root index that was added
        n = head;
        p = 1;
        while (n != NULL) { 
            if(p == root_indx){
                n->cell->right_sibling = root_children[i+1];
                break;
            }
            p++;
            n = n->next; 
        }
        
    }
    root_indx = cellspace_size++;
    return root_indx;
}

//appends a new tree at the end of the linked list
int append(Node *node, char *filename){ 

    //Open File for values
    FILE *fd;
    fd = fopen(filename, "rd");
    if(fd == NULL)
    {
        printf("Failed Opening %s! \n", filename);   
        exit(EXIT_FAILURE);             
    }

    Node * head = node;
    Node * insert = NULL;
    Node * p = NULL;
    Cell* temp_cell = NULL;

    char *token;
    char line[20];
    int i = 1;
    int counter = 0;

    int curr_cell_size = cellspace_size;
    int added_root = cellspace_size + 1;
    while(fgets(line, sizeof line, fd) != NULL){ 

        temp_cell = (Cell *)malloc(sizeof(Cell*));//malloc new cell space struct

        token = strtok(line, ",");

        while (token != NULL) {//go through all tokens in a row 

            if(counter == 0){
                if(!strcmp(token,"-")){
                    temp_cell->left_child = 0;
                }else{
                    temp_cell->left_child = atoi(token) + curr_cell_size; //shift indexes
                }
            }
            else if(counter == 1){
                temp_cell->label = (char*)malloc(3);
                strcpy(temp_cell->label, token);
            }
            else if(counter == 2){

                if(strlen(token) == 2){
                    token[strlen(token)-1] = 0;
                }

                if(!strcmp(token,"-")){
                    temp_cell->right_sibling = 0;
                }else{
                    temp_cell->right_sibling = atoi(token) + curr_cell_size; //shift indexes
                }
                counter = -1;
            }
            counter++;
            token = strtok(NULL, ","); 
        } 
 
        insert = (Node *)malloc(sizeof(Node*));
        insert->cell = temp_cell;
        insert->next = NULL;

        p = head;
        while(p->next != NULL){
            p = p->next;
        }
        p->next = insert;
        
        cellspace_size++;
        i++;
    }

    return added_root;
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

    // //Generate Linked List
    Node * head = NULL;
    Node * temp = NULL;
    Cell* temp_cell = NULL;
    Node * p = NULL;
    char *token;
    char line[20];
    int i = 1;
    int counter = 0;

    while(fgets(line, sizeof line, fd) != NULL){ 
        i++;

        temp_cell = (Cell *)malloc(sizeof(Cell*));//malloc new cell space struct

        token = strtok(line, ",");

        while (token != NULL) {//go through all tokens in a row 

            if(counter == 0){
                if(!strcmp(token,"-")){
                    temp_cell->left_child = 0;
                }else{
                    temp_cell->left_child = atoi(token);
                }
            }
            else if(counter == 1){
                temp_cell->label = (char*)malloc(3);
                strcpy(temp_cell->label, token);
            }
            else if(counter == 2){

                if(strlen(token) == 2){//get rid of new line character
                    token[strlen(token)-1] = 0;
                }
                if(!strcmp(token,"-")){
                    temp_cell->right_sibling = 0;
                }else{
                    temp_cell->right_sibling = atoi(token);
                }
                counter = -1;
            }
            counter++;
            token = strtok(NULL, ","); 
        } 
 
        temp = (Node *)malloc(sizeof(Node*));
        temp->cell = temp_cell;
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
        cellspace_size++;
    }

    fclose(fd);
    return head;
}

void errorMSG(){
    printf("Use: ./tree_cellspace [treefile] [function] *[node/node label] *[treefile] \n");
    printf("*[] arguments are optional depending on the function \n");
    printf("Functions: \n");
    printf("\n");
    printf("leftmost_child [node]           - retireves the leftmost child of node in tree\n");
    printf("right_sibling [node]            - returns right sibling of node in tree\n");
    printf("label [node]                    - retireves label of node in tree\n");
    printf("createi [label] [tree1]...      - creates a new node with label and children which are roots of the new trees\n");
    printf("root                            - returns root node of tree\n");
    printf("makenull                        - make T to be a null tree\n");
    printf("\n");
    exit(EXIT_FAILURE);
}