function comb(n, x)
    s = 0
    for i in 1:n
        for j in i+1:n
            for k in j+1:n
                if i+j+k == x
                    s += 1
                end
            end
        end
    end
    return s
end


while true
    n, x = parse.(Int, split(readline()))
    n == x == 0 && break
    println(comb(n,x))
end

