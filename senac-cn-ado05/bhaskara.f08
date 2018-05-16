program bhaskara
    real :: a,b,c,delta,r1,r2,temp, arrayArgs(3)
    integer :: i=1
    character(len=36) :: arg

    do while (i<4)
        call getarg(i,arg)
        read (arg,*) arrayArgs(i)
        i = i+1
    end do

    a = arrayArgs(1)
    b = arrayArgs(2)
    c = arrayArgs(3)

    delta = b**2 - 4*a*c
    !print  *,delta

    if (delta == 0) then
        r1 = -b /2*a
        print '("Delta = 0")'
        if (r1 == 0) then
            r1 = abs(r1)
        endif
        print '("Raiz: "(f0.0))',r1
    else
        if (delta<0) then
            temp = -b /2*a
            r1 = sqrt(abs(delta))/2*a
            print '("Delta < 0")'
            if(r1 >0) then
                print '("Raiz complexa: " (f0.0),"+" (f0.0)"i")', temp, r1
            else
                print '("Raiz complexa: " (f0.0)" - "(f0.0)"i")', temp,abs(r1)
            endif
        endif
        if (delta>0) then
            r1 = (-b + sqrt(delta))/2*a
            r2 = (-b - sqrt(delta))/2*a
            print '("Delta > 0")'
            print '("Raiz 1: " (f0.0) "  |  Raiz 2: "(f0.0))', r1,r2
        endif
    endif
end program bhaskara