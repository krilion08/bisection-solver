program bisection_solver
  implicit none
  real(8), parameter :: eps=1.d-6
  real(8) :: a, b, f, c
  integer :: i


  c=1
  read*, a, b
  if (f(a)*f(b)>=0) then
    write (*,*) ("Wrong initial interval")
  error stop
  endif  
  do while (abs(c)>eps)
      c=(a+b)/2
      if (f(c)*f(b)<=0) then
        a=c
      else 
        b=c
      endif
      print*, c
  enddo
  end program

function f(x)
  real(8) :: x, f
  f=25*x
  return
  end function

