program addCorrect
    integer :: x
    integer :: y
    print *, "Enter two integers to be added together."
    print *, "Input: "
    read *, x, y
    print 100, x, "+", y, "=", x+y
    100 format(1x, i3, 1x, a, 1x, i3, 1x, a, 1x, i3)
end program addCorrect