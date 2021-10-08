#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>


//define datatype structure and declare functions
typedef struct Child { 
    int child_index;
    struct Child* next;
}Child; 

//A linked list of Cellspaces
typedef struct Node { 
    struct Child* children;
    struct Node* next;
    char *label; 
}Node; 


int root_indx; //Store the root of the tree

int cellspace_size;
Node * buildLinkedList(char *filename);
void errorMSG();
void print_tree(Node* n); //print linked list 
int leftmost_child(Node*n, int node);
int right_sibling(Node*n, int node);
char* label(Node*n, int node);
int MAKENULL(Node *node);

int find_root(Node *node);

int createi(Node *head, char *v_root, int root_children[], int num);
int append(Node *node, char *filename);


int main(int argc, char** argv){

    //checks usage correctness
    if(argc < 3){
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
    //print_tree(head); 

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
            printf("Could not find right sibling of node %d\n", node);
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

        int i = 0, n = 1;
        int new_tree_root;
        int root_children[100]; //store the children 
        root_children[0] = root_indx; //store the subtree root index in the array

        for(i=4; i<argc; i++){
            char *tree = argv[i];//tree file
            root_children[n] = append(head, tree);//store the added tree roots
            n++;
        }

        int result = createi(head, v_root, root_children, n); //returns the new root node
        print_tree(head); 
        printf("%d \n", result);
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
    //printf("Size = %d \n", cellspace_size);
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

        Child *store_ptr = node->children;
        while(node->children != NULL){
            nodes[node->children->child_index] = 0;
            node->children = node->children->next;
        }
        node->children = store_ptr;
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
            return n->label;
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
            if( n->children != NULL)
                return n->children->child_index; //the first child index is the leftmost child
            else{
                return -1;
            }
        }
        i++; 
        n = n->next; 
    }
    return -1;
}

int right_sibling(Node*n, int node){
    while (n != NULL) {
        Child *store_ptr = n->children;
        while(n->children != NULL){

            if(n->children->child_index == node && n->children->next != NULL){
                n->children = n->children->next;
                return n->children->child_index;
            }
            n->children = n->children->next;
        }
        n->children = store_ptr;
        n = n->next; 
    }
    return -1;
}

//prints the linked list with the tree nodes - used for testing
void print_tree(Node* n) 
{ 
    printf("Label - Children\n");
    while (n != NULL) { 
        printf("%s - ", n->label);
        Child *store_ptr = n->children;
        while(n->children != NULL){
            printf("%d - ", n->children->child_index);
            n->children = n->children->next;
        }
        n->children = store_ptr;
        n = n->next; 
        printf("\n"); 
    }
    printf("\n"); 
}

int MAKENULL(Node *node){
    Node * temp = NULL;
    Child *temp_chld = NULL;

    while(node != NULL){//free nodes
        temp = node;
        node = node->next;

        while(temp->children != NULL){//free children of a node
            temp_chld = temp->children;
            temp->children = temp->children->next;
            free(temp_chld);
        }
        free(temp);
    }
    return 1;
}

//Creates a new root and appends the subtree roots to its children
//Updates the root node
int createi(Node *head, char *v_root, int root_children[], int num){
    int i = 0, p = 1;

    //Create Root Node
    Node*n = head;
    Node* root = (Node *)malloc(sizeof(Node*));

    
    //Create new root children linked list
    Child* child_head = NULL;

    for(i = 0; i < num; i++){
        Child* temp_child = NULL;
        Child* m = NULL;
        
        temp_child = (Child *)malloc(sizeof(Child*));
        temp_child->next = NULL;
        temp_child->child_index = root_children[i];

        if(child_head == NULL){//if linked list is still empty
            child_head = temp_child;
        }else{
            m = child_head;
            while(m->next != NULL){
                m = m->next;
            }           
            m->next = temp_child;
        }
        
    }
    root->label = malloc(sizeof(v_root)); 
    strcpy(root->label, v_root);
    root->children = child_head;
    root->next = NULL;
    //insert new root at the back
    while(n->next != NULL){
        n = n->next;
    }
    n->next = root;

    cellspace_size++;
    root_indx = cellspace_size;

    return root_indx;
}

//appends a new tree at the end of the linked list
int append(Node *head, char *filename){ 

    //Open File for values
    FILE *fd;
    fd = fopen(filename, "rd");
    if(fd == NULL)
    {
        printf("Failed Opening %s! \n", filename);   
        exit(EXIT_FAILURE);             
    }

    // //Generate Linked List
    Node * insert = NULL;
    Node * p = NULL;

    char *token;
    char line[20];
    int counter = 0;
    int added_root = cellspace_size + 1;

    while(fgets(line, sizeof line, fd) != NULL){ 
        Child* child_head = NULL;
        Child* temp_child = NULL;
        Child* m = NULL;

        insert = (Node *)malloc(sizeof(Node*));
        token = strtok(line, ",");

        while (token != NULL) {//go through all tokens in a row 
            if(counter == 0){
                insert->label = (char*)malloc(3);
                strcpy(insert->label, token);
            }else{
                if(token[strlen(token)-1] == '\n'){
                    token[strlen(token)-1] = 0;
                }

                if(strcmp(token,"-")){
                    //Create linked list of children
                    temp_child = (Child *)malloc(sizeof(Child*));
                    temp_child->next = NULL;
                    temp_child->child_index = atoi(token) + cellspace_size;
                    if(child_head == NULL){//if linked list is still empty
                        child_head = temp_child;
                    }else{
                        m = child_head;
                        while(m->next != NULL){
                            m = m->next;
                        }           
                        m->next = temp_child;
                    }
                }
            }
            counter++;
            token = strtok(NULL, ","); 
        } 
        counter = 0;

        insert->children = child_head;
        insert->next = NULL;

        p = head;
        while(p->next != NULL){
            p = p->next;
        }
        p->next = insert;
        
        cellspace_size++;
    } 

    return added_root;
}

//Construct linked lists of nodes and children from input file
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
    Node * p = NULL;

    char *token;
    char line[20];
    int i = 1;
    int counter = 0;

    while(fgets(line, sizeof line, fd) != NULL){ 
        Child* child_head = NULL;
        Child* temp_child = NULL;
        Child* m = NULL;

        temp = (Node *)malloc(sizeof(Node*));
        token = strtok(line, ",");

        while (token != NULL) {//go through all tokens in a row 
            if(counter == 0){
                temp->label = (char*)malloc(3);
                strcpy(temp->label, token);
            }else{
                if(token[strlen(token)-1] == '\n'){
                    token[strlen(token)-1] = 0;
                }

                if(strcmp(token,"-")){

                    //Create linked list of children
                    temp_child = (Child *)malloc(sizeof(Child*));
                    temp_child->next = NULL;
                    temp_child->child_index = atoi(token);

                    if(child_head == NULL){//if linked list is still empty
                        child_head = temp_child;
                    }else{
                        m = child_head;
                        while(m->next != NULL){
                            m = m->next;
                        }           
                        m->next = temp_child;
                    }
                }
            }
            counter++;
            token = strtok(NULL, ","); 
        } 
        counter = 0;
    
        temp->children = child_head;
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