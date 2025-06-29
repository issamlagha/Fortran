program process_meteorological_data
  implicit none

  real :: lat, lon, param
  character(len=256) :: filename
  integer :: iunit, ios, i, num_lines
  real, allocatable :: lats(:), longs(:), params(:)

  ! File path (modify as needed)
  filename = 'data.txt'

  ! Open file for reading
  open(unit=iunit, file=filename, status='old', action='read', iostat=ios)
  if (ios /= 0) then
     print *, "Error opening file: ", filename
     stop
  end if

  ! Determine the number of lines in the file
  num_lines = 0
  do
     read(iunit, *, iostat=ios)
     if (ios /= 0) exit  ! Exit if end of file is reached
     num_lines = num_lines + 1
  end do

  ! Allocate arrays based on the number of lines in the file
  allocate(lats(num_lines), longs(num_lines), params(num_lines), stat=ios)
  if (ios /= 0) then
     print *, "Error allocating memory."
     stop
  end if

  ! Rewind the file to read the data again
  rewind(iunit)

  ! Read data from the file (latitude, longitude, temperature, pressure, wind speed)
  i = 1
  do while (.true.)
     read(iunit, *, iostat=ios) lat, lon, param
     if (ios /= 0) exit  ! Exit if end of file is reached

     ! Store the data in arrays
     lats(i) = lat
     longs(i) = lon
     params(i) = param

     i = i + 1
  end do

  ! Close the file
  close(iunit)

  ! Print the collected data
  print *, "Data from file: ", filename
  do i = 1, num_lines
     print '(3f8.2)', lats(i), longs(i), params(i)
  end do

  ! Free allocated memory
  deallocate(lats, longs, params)

end program process_meteorological_data

