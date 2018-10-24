a = b = 0

n = parse(Int, readline())
for i in 1:n
    sa, sb = split(readline())
    if sa < sb
        global b += 3
    elseif sa > sb
        global a += 3
    else
        a += 1
        b += 1
    end
end
println(a, " ", b)


