#include <mpfr.h>
#include <stdio.h>

int main() {
    mpfr_t pi;
    mpfr_init2(pi, 100);  // Set precision to 100 bits
    mpfr_const_pi(pi, MPFR_RNDN);  // Set the value of Pi
    mpfr_printf("%.50Rf\n", pi);  // Print Pi with 50 decimal places
    mpfr_clear(pi);
    return 0;
}

