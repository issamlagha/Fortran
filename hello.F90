program hello
    implicit none
    !character*30 :: name
    integer :: age
    character(len = 20) :: first_name, last_name
    print *, "what's your name and how old are you?"
    read *, first_name, last_name, age
    print *, "Hello ", trim(first_name), " ", trim(last_name)
    print *, "you are", age, " years old"

end program hello 