program temperature
  implicit none
  integer :: t

  ! Prompt user for input
  print*, 'Enter a temperature value between -100 and 60:'
  read(*,*) t

  select case(t)
  case(-100:-41)
    print*, 'Freeze'
  case(-40:0)
    print*, 'Cold'
  case(1:20,25)
    print*, 'Mid'
  case(21:24,26:60)
    print*, 'Hot'
  case default
    print*, 'Invalid temperature. Enter a value between -100 and 60.'
  end select
end program temperature

