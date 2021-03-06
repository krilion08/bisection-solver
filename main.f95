program bisection_solver
  implicit none
  real(8), parameter :: eps=1.d-6     ! error of a solution
  real(8) :: a, b, f, c
  integer :: i


  c=1
  read*, a, b                         ! select range
  if (f(a)*f(b)>=0) then
    write (*,*) ("Wrong initial interval")
  error stop
  endif  
  do while (abs(f(c))>eps)
      c=(a+b)/2
      if (f(c)*f(b)<=0) then
        a=c
      else 
        b=c
      endif
      print*, "zero of the function is ",c
  enddo
  end program

function f(x)
  real(8) :: x, f
  f=-25*x+71.33*x**2-555
  return
  end function

