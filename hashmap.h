// Hash function, implemented with rolling polynomial.
void hashFunction(char*, int);

void* hashmap_create(int size);

void hashmap_setValue(int* map, long long (*hashFun)(char*, int), char* key, void* value, int valueSize)