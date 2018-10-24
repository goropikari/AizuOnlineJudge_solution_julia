function print_rec(H, W)
    for i in 1:H
        for j in 1:W
            print("#")
        end
        println()
    end
end


while true
    H, W = parse.(Int, split(readline()))
    (H == 0 && W == 0) && break
    print_rec(H, W)
    println()
end

