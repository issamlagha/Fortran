subroutine print_message(message)
  implicit none
  character(len=*), intent(in) :: message
  print *, message
end subroutine print_message

program main
  implicit none
  call print_message("Hello, World!")
  call print_message("Max value: 1000")
end program main

