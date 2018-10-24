a, b, c = parse.(Int, split(readline()))
v = sort([a,b,c])
println(v[1], " ", v[2], " ", v[3])
