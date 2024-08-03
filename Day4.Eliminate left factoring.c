#include <stdio.h>
#include <string.h>

#define MAX_PRODUCTIONS 10
#define MAX_LENGTH 100

int main() {
    char productions[MAX_PRODUCTIONS][MAX_LENGTH];
    int num_productions = 0,i;
    char newNonTerminal = 'A';
    int leftFactoringDone = 0;
    printf("Enter the number of productions: ");
    scanf("%d", &num_productions);
    printf("Enter the productions (e.g., A->aB):\n");
    for ( i = 0; i < num_productions; i++) {
        scanf("%s", productions[i]);
		}
    printf("\nOriginal Productions:\n");
    for ( i = 0; i < num_productions; i++) {
        printf("%s\n", productions[i]);
    }
    int j;
    printf("\nFactored Productions:\n");
    for ( i = 0; i < num_productions; i++) {
        for ( j = i + 1; j < num_productions; j++) {
            int k = 0;
            while (productions[i][k] == productions[j][k] && productions[i][k] != '\0' && productions[j][k] != '\0' && productions[i][k] != '-' && productions[j][k] != '-') {
                k++;
            }
            if (k > 0 && productions[i][k] != '-' && productions[j][k] != '-') {
                // Create a new non-terminal and production
                printf("%c -> %c%c\n", productions[i][0], productions[i][1], newNonTerminal);
                printf("%c -> %c%s\n", newNonTerminal, productions[i][1], productions[i] + k);
                printf("%c -> %c%s\n", newNonTerminal, productions[j][1], productions[j] + k);
                newNonTerminal++;
                leftFactoringDone = 1;
            }
        }
    }
    if (!leftFactoringDone) {
        printf("No left factoring needed.\n");
    }

    return 0;
}
