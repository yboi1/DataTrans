#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <unistd.h>

int main(){
    int shmid = shmget(100, 4096, IPC_CREAT | 0644);
    void* ptr = shmat(shmid, NULL, 0);
    
    printf("%s", (char *)ptr);
    shmdt(ptr);
    shmctl(shmid, IPC_RMID, NULL);
    return 0;
}