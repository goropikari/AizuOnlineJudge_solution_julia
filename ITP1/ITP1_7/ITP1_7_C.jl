r, c = parse.(Int, split(readline()))
table = zeros(Int, r+1, c+1)
for row in 1:r
    table[row, 1:end-1] = parse.(Int, split(readline()))
end

for i in 1:r
    table[i,end] = sum(table[i,1:end-1])
end

for i in 1:c
    table[end,i] = sum(table[1:end-1, i])
end

table[end,end] = (sum(table[end,:]) + sum(table[:,end])) / 2

for i in 1:r+1
    for j in 1:c+1
        if j == 1
            print(table[i,j])
        else
            print(" ", table[i,j])
        end
    end
    println()
end

