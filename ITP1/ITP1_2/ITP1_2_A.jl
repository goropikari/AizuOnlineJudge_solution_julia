a, b = parse.(Int, split(readline()))
if a < b
    println("a < b")
elseif a > b
    println("a > b")
else
    println("a == b")
end
