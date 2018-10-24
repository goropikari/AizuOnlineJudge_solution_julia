n = parse(Int, readline())
a = parse.(Int, split(readline()))
maxnum = typemin(Int64)
minnum = typemax(Int64)
sumnum = 0
for num in a
    global maxnum = max(maxnum, num)
    global minnum = min(minnum, num)
    global sumnum += num
end
println(minnum, " ", maxnum, " ", sumnum)
