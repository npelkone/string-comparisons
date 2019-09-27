#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <ctype.h>

int main () {
    char * string = 0;
    int i=0;
    long length;

    FILE * f = fopen("../string-10m.txt","rb");

    if (f) {
        fseek (f, 0, SEEK_END);
        length = ftell (f);
        fseek (f, 0, SEEK_SET);
        string = malloc(length);
        if (string) {
            fread (string, 1, length, f);
        }
        fclose (f);
    }

    clock_t start = clock();


    // --------- tupper ---------
    // while(string[i]) {
    //     toupper(string[i]);
    //     i++;
    // }

    // // --------- concat ---------
    // char string2[] = "a";
    // strcat(string,string2);

    // --------- equals ---------
    // char *duplicate_string;
    // duplicate_string = strdup(string);
    // char string2[] = "a";
    // strcat(duplicate_string,string2);
    // int ret;
    // ret = strcmp(string, duplicate_string);

    // --------- strstr ---------
    // char *ret;
    // char find_str[] = "abba";
    // ret = strstr(string,find_str);

    // // --------- duplicate ---------
    // char *duplicate_string;
    // duplicate_string = strdup(string);
    

    clock_t end = clock();

    f = fopen("times-file.txt","a");
    fprintf(f, "%lf\n", (double)(end-start)/CLOCKS_PER_SEC);
    fclose(f);

    return(0);
}
