w = readline()
n = 0
while (s = readline()) != "END_OF_TEXT"
    ss = split(lowercase(s))
    for word in ss
        w == word && (global n += 1)
    end
end
println(n)
