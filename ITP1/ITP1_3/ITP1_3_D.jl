a, b, c = parse.(Int, split(readline()))
n = 0
for i in a:b
    if c % i == 0
        global n += 1
    end
end
println(n)
