#include <stdio.h>
<<<<<<< HEAD
long long add(int a, int b);

int main() {
	int a, b;
	scanf("%d %d", &a, &b);
	printf("%d + %d = %lld\n", a, b, add(a, b));
=======
<<<<<<< Updated upstream
long long add(int a, int b);
=======
int add(int a, int b);
>>>>>>> Stashed changes
long long mul(int a, int b);
int main() {
	int a, b;
	scanf("%d %d", &a, &b);
<<<<<<< Updated upstream
	printf("%d + %d = %lld\n", a, b, add(a, b));
=======
	printf("%d + %d = %d\n", a, b, add(a, b));
>>>>>>> Stashed changes
	printf("%d * %d = %lld\n", a, b, mul(a, b));
>>>>>>> 4465737 (Add a feature to multiply two integers)
}

