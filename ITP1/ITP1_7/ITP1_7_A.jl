function grade(mid, fin, re)
    score = mid+fin
    (mid == -1 || fin == -1 || score < 30) && return "F"
    score >= 80 && return "A"
    65 <= score < 80 && return "B"
    50 <= score < 65 && return "C"
    if 30 <= score < 50
        if re >= 50
            return "C"
        else
            return "D"
        end
    end
end

while true
    mid, fin, re = parse.(Int, split(readline()))
    mid == fin == re == -1 && break
    println(grade(mid, fin, re))
end
