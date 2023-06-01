! file: main.f90

program main
        use iso_c_binding
        implicit none
        integer(C_INT64_T), allocatable, target :: array(:)
        integer(C_INT64_T) :: n, i
        interface
                subroutine c_function(array, n) bind(C, name="c_function")
                        use iso_c_binding
                        integer(C_INT64_T), intent(inout) :: array(*)
                        integer(C_INT64_T), value, intent(in) :: n
                end subroutine c_function
        end interface

        interface
        subroutine set_affinity(array, n) bind(C, name="set_affinity")
                use iso_c_binding
                        integer(C_INT64_T), intent(inout) :: array(*)
                        integer(C_INT64_T), value, intent(in) :: n
                end subroutine set_affinity
        end interface



        n = 10
        allocate(array(n))

        do i = 1, n
                array(i) = i
        end do

        call c_function(array, n)

        call set_affinity(array, n)

end program main
