s = readline()
p = readline()

s = s^3
if occursin(p, s)
    println("Yes")
else
    println("No")
end
