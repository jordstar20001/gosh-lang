#define INT_TYPE 1
#define FLOAT_TYPE 2
#define BOOL_TYPE 3
#define STR_TYPE 4
#define LIST_TYPE 5

#define small char

typedef struct primitivetype {
    small underlyingType;
    void* data;
};

typedef struct goshtype {
    char* typeName;
    int size;
    void* members;
};

typedef struct member {
    char* name;
    struct goshtype type;
};

typedef struct goshobject {
    struct goshtype* type;
    void* location;
};

struct goshtype* createType(char* typeName, int size, char* names, struct goshtype* types);
struct goshobject* createObject(struct goshtype* type);