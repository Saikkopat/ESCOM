#include <stdio.h>
#include <curses.h>

int main () {
	initscr();
	keypad(stdscr, TRUE);
	char nom [10];
	int i;
	for (i = 0; i < 10; i++) {
		printf("\n");
		printf("   Letra %d : ", i);
		nom [i] = wgetch(stdscr);
	}
	endwin();
	printf("\n  nom [5] = %c\n", nom[5]);
	printf("   \n%s\n", nom);
	return 0;
}
