n, m = parse.(Int, split(readline()))
A = zeros(Int, n, m)
for i in 1:n
    A[i, :] = parse.(Int, split(readline()))
end

v = zeros(Int, m)
for i in 1:m
    v[i] = parse(Int, readline())
end

w = A * v

for i in w
    println(i)
end
