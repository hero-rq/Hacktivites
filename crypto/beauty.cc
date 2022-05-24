#include <bits/stdc++.h>

using ul = long long unsigned;
int main() {
	ul n1 = 3651725128ull;
	for(ul i = 2; ; i++) {
		if(n1 % i == 0) {
			printf("%llu %llu", i, n1/i);
			break;
		}
	}
}
