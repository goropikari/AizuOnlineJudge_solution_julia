i = 0
while true
    global i += 1
    x = parse(Int, readline())
    iszero(x) && break
    println("Case $i: $x")
end
