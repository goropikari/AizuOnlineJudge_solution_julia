function print_frame(H, W)
    println("#"^W)
    for i in 1:H-2
        println("#", "."^(W-2), "#")
    end
    println("#"^W)
end

while true
    H, W = parse.(Int, split(readline()))
    (H == 0 && W == 0) && break
    print_frame(H, W)
    println()
end
