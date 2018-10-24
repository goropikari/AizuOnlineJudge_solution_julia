while true
    str = readline()
    str == "-" && break
    m = parse(Int, readline())
    for i in 1:m
        h = parse(Int, readline())
        str = str[h+1:end] * str[1:h]
    end
    println(str)
end
