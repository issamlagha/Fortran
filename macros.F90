#define GREETING "Hello, World!"
#define MAX_VALUE 1000
#define MIN_VALUE 0

program main
  implicit none

  ! Call the converted subroutines
  call string_macro
  call include_example
end program main

subroutine string_macro
  implicit none
  print *, GREETING
end subroutine string_macro

subroutine include_example
  implicit none
  print *, "Max value:", MAX_VALUE
  print *, "Min value:", MIN_VALUE
end subroutine include_example

