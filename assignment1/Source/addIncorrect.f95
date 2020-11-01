program addInorrect
    integer :: x
    integer :: y
    print *, "Enter two integers to be added together."
    read *, x, y
    x = ABS(x)
    y = ABS(y)
    print 100, x, "+", y, "=", x+y
    100 format(1x, i3, 1x, a, 1x, i3, 1x, a, 1x, i3)
end program addInorrect