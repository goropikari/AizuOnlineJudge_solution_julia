while true
    a, op, b = split(readline())
    a, b = parse.(Int, [a, b])
    op == "?" && break
    ops = Dict("+" => +, "-" => -, "*" => *, "/" => div)
    println(ops[op](a,b))
end
