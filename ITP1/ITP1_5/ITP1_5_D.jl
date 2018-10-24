n = parse(Int, readline())
for i in 1:n
    global x = i
    if x % 3 == 0
        print(" ", i)
    else
        truth = true
        while truth
            if x % 10 == 3
                print(" ", i)
                break
            end
            x = div(x, 10)
            truth = (x != 0)
        end
    end
end
println()
