#include <stdio.h>
#include <stdlib.h>

int main()
{
	/* Allocate memory */
	type *ptr = malloc(sizeof(type) * num_elements);

	if (ptr == NULL)
	/* Handle memory allocation error */
	{
		fprintf(stderr,"Memory allocation failed");
		exit(1);
	}

	/* use the allocated memory */
	// ...

	/* Don't forget to free the allocated memory */

	return 0;
}

