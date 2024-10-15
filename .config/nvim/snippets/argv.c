#include <stdio.h>
#include <stdlib.h>

int main (int argc, char **argv)
{
	if (argc == 2)
		printf("Hello, %s\n", argv[1]);

	else
	{
		fprintf(stderr, "Usage: %s <Name>\n", argv[0]);
		return 1;
	}
	return 0;
}

