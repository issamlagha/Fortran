program racine
        implicit none

        ! variables
        integer :: n
        real :: x

        ! initialisation
        x = 1.0

        ! boucle
        do n = 1, 100
           x = x/2 + 1/x
        end do

        ! affichage
        print*, 'approx de racine(2) : ', x
end program racine
