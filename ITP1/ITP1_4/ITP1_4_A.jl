using Printf
a, b = parse.(Int, split(readline()))
@printf("%d %d %0.8f\n", div(a,b), a%b, a/b)
