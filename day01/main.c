#include <stdio.h>

int main(void) {
    FILE *fp;
    char direction[2];
    int rotate = 0; 
    int password = 0; 
    int dial = 50;

    fp = fopen("input.txt", "r");

    while (fscanf(fp, "%1s%d", direction, &rotate) != EOF) {
        if (*direction == 'L') {
            dial -= rotate;
            // printf("%d\n", dial);
        } else {
            dial += rotate;
            // printf("%d\n", dial);
        }
        if (dial % 100 == 0) {
            password++;
        }
    }

    printf("%d\n", password);
    fclose(fp);
}