long long hashFunction(char* input, int bound){
    // Compute a hash based on the input
    long long hash = 0;
    char* curr = input;
    int power = 0;

    while(*curr != '\0'){
        hash += *curr ^ power;
        power++;
    }

    hash %= bound;

    return hash;
}

void* hashmap_create(int mapSize, int objSize){
    // Get some memory
    // Get size lots of objects, with extra space for an integer.
    void* memloc = malloc(mapSize * objSize + sizeof(int));
    // Set it to 0
    

}

void hashmap_setValue(int* map, long long (*hashFun)(char*, int), char* key, void* value, int valueSize){
    int hash = hashFun(key, getHashmapSize(map));
}

void* hashmap_getValue(int* map, long long (*hashFun)(char*, int), char* key){
    int hash = hashFun(key, getHashmapSize(map));
}

int getHashmapSize(void* map){
    return *(int*)map;
}