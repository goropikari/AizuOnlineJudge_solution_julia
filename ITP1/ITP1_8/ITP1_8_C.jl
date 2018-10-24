function isalphabet(c)
    return 'a' <= c <= 'z' || 'A' <= c <= 'Z'
end
counts = Dict(zip('a':'z', zeros(Int, 26)))

strs = readlines()
for str in strs
    for c in str
        if isalphabet(c)
            counts[lowercase(c)] += 1
        end
    end
end

for c in 'a':'z'
    println(c, " : ", counts[c])
end
