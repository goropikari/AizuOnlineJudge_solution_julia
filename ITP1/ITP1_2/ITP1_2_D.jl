W, H, x, y, r = parse.(Int, split(readline()))
if (0 <= x-r && x+r <= W) && (0 <= y-r && y+r <= H)
    println("Yes")
else
    println("No")
end
