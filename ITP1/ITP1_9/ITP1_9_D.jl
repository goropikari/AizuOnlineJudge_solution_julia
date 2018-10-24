str = collect(readline())
n = parse(Int, readline())
for _ in 1:n
    op = split(readline())
    a, b = parse.(Int, op[2:3])
    if op[1] == "print"
        for i in a+1:b+1
            print(str[i])
        end
        println()
    elseif op[1] == "reverse"
        reverse!(view(str, a+1:b+1))
    else
        substr = view(str, a+1:b+1)
        substr .= collect(op[4])
    end
end
