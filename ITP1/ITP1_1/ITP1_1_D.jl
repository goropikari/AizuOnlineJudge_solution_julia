t = parse(Int, readline())
h = div(t, 3600)
m = div(t, 60) % 60
s = t % 60
println("$h:$m:$s")
