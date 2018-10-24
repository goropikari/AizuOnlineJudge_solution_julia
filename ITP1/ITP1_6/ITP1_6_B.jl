mark = ("S", "H", "C", "D")
marknum = Dict(zip(mark, 1:4))
nummark = Dict(zip(1:4, mark))
card = zeros(Bool, 4, 13)

n = parse(Int, readline())
for i in 1:n
    m, num = split(readline())
    num = parse(Int, num)
    card[marknum[m], num] = true
end

for i in 1:4
    for j in 1:13
        if !card[i, j]
            println(nummark[i], " ", j)
        end
    end
end
