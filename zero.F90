program zero
  implicit none
  real :: x_0, x, diff, tot

  x_0 = 1.0
  tot = 1.0
  newton: do
    x = x_0 - ( x_0 - exp( - x_0 ) )/( 1 + exp( - x_0 ) )

    if ( x_0 /= 0.0 ) then
      diff = abs( ( x - x_0 )/( x_0 ) )
    else
      diff = abs( x - x_0 )
    end if
    x_0 = x
    if ( diff < tot ) then
      exit
    end if
  end do newton
  print '(a4,f4.2)', 'x = ', x
end program zero
