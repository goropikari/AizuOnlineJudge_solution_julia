function print_house(house, floor)
    for i in 1:3
        for j in 1:10
            print(" ", house[floor, i, j])
        end
        println()
    end
end

house = zeros(Int, 4, 3, 10)
n = parse(Int, readline())
for i in 1:n
    b, f, r, v = parse.(Int, split(readline()))
    house[b,f,r] += v
end

print_house(house, 1)
println("#"^20)
print_house(house, 2)
println("#"^20)
print_house(house, 3)
println("#"^20)
print_house(house, 4)
