#define PI 3.14159
#define SQUARE(x) ((x)*(x))
#define GREETING "Hello, World!"
#define MAX_VALUE 1000
#define MIN_VALUE 0

program main
  implicit none

  ! Call each subroutine
  call preprocess_example
  call macros_example
  call conditional_example
  call string_macro
  call include_example

end program main

!###########################################################################

subroutine preprocess_example
  implicit none
  print *, "Value of PI:", PI
end subroutine preprocess_example

!###########################################################################

subroutine macros_example
  implicit none
  print *, "Square of 4:", SQUARE(4)
end subroutine macros_example

!###########################################################################

subroutine conditional_example
  implicit none
! use -DDEBUG
#ifdef DEBUG
  print *, "Debugging mode enabled"
#else
  print *, "Release mode enabled"
#endif
end subroutine conditional_example

!###########################################################################

subroutine string_macro
  implicit none
  print *, GREETING
end subroutine string_macro

!###########################################################################

subroutine include_example
  implicit none
#include "constants.inc"
  print *, "Max value:", MAX_VALUE
  print *, "Min value:", MIN_VALUE
end subroutine include_example

