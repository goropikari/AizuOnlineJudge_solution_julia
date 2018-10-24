n = parse(Int, readline())
a = parse.(Int, split(readline()))
for i in n:-1:1
    if i == n
        print(a[i])
    else
        print(" ", a[i])
    end
end
println()
