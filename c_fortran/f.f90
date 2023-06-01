! file: main.f90

program main
  use iso_c_binding
  implicit none
  integer, allocatable, target :: array(:)
  integer :: n, i
  interface
    subroutine c_function(array, n) bind(C, name="c_function")
      use iso_c_binding
      integer(C_INT), intent(inout) :: array(*)
      integer(C_INT), value, intent(in) :: n
    end subroutine c_function
  end interface

  n = 10
  allocate(array(n))

  do i = 1, n
    array(i) = i
  end do

  call c_function(array, n)

end program main
