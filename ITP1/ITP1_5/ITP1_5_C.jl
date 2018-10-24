mark(x) = ifelse(iseven(x), "#", ".")
function print_board(H, W)
    for i in 1:H
        for j in 1:W
            print(mark(i+j))
        end
        println()
    end
end

while true
    H, W = parse.(Int, split(readline()))
    (H == 0 && W == 0) && break
    print_board(H, W)
    println()
end
