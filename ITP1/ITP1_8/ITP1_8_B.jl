function sumdigit(n)
    numsum = 0
    for c in n
        numsum += parse(Int, c)
    end
    return numsum
end

while true
    n = readline()
    n == "0" && break
    println(sumdigit(n))
end

