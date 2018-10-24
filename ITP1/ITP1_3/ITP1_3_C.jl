i = 0
while true
    global i += 1
    x, y = parse.(Int, split(readline()))
    (x == y == 0) && break
    if x < y
        println(x, " ", y)
    else
        println(y, " ", x)
    end
end
