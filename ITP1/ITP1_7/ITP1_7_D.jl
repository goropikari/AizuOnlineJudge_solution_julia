n, m, l = parse.(Int, split(readline()))
A = zeros(Int, n, m)
B = zeros(Int, m, l)
for i in 1:n
    A[i,:] = parse.(Int, split(readline()))
end

for i in 1:m
    B[i,:] = parse.(Int, split(readline()))
end

C = A * B
for i in 1:n
    for j in 1:l
        if j == 1
            print(C[i,j])
        else
            print(" ", C[i,j])
        end
    end
    println()
end

