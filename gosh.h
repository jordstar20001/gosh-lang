typedef struct goshobject {
    type* type;
    void* location;
};

typedef struct goshtype {
    char* typeName;
    int size;
    char* names;
    type* types;
};

goshtype* createType(char* typeName, int size, char* names, goshtype* types);
goshobject* createObject(goshtype* type);