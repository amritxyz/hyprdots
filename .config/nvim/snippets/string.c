#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
	/* Declare a sting */
	char *str = NULL;

	/* Allocate memory for the string */
	str = malloc(sizeof(char) * 100);

	if (str == NULL)
	/* Memory allocation error */
	{
		fprintf(stderr, "Memory allocation failed!");
		exit(1);
	}

	/* Read sting from the user */
	printf("Enter a string: ");
	fgets(str, 100, stdin);

	/* Remove the newline character */
	str[strcspn(str, "\n")] = 0;

	/* Use string */
	printf("You entered %s", str);

	/* Free the allocated memory */
	free(str);

	return 0;

}

