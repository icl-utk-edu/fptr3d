program ptr3d

  use iso_c_binding

  implicit none

  interface
    subroutine cfptr3d(p, d1, d2, d3) bind(c,name='cfptr3dx')
      import :: c_int, c_ptr
      type(c_ptr), intent(out) :: p
      integer(kind=c_int), value :: d1, d2, d3
    end subroutine
  end interface

  integer(kind=c_int),parameter :: d1=4, d2=3, d3=2

  integer i, j, k
  type(c_ptr) :: cptr
  real,pointer :: a(:, :, :)

  call cfptr3d(cptr, d1, d2, d3)
  call c_f_pointer(cptr, a, shape=(/d1,d2,d3/))
  do i = 1,d1
    do j = 1,d2
      do k = 1,d3
        print *, i, j, k, a(i, j, k)
      end do
    end do
  end do
end program ptr3d
