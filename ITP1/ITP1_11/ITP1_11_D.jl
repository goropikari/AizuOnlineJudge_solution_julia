mutable struct Die
    face::Vector{String}
end

function roll!(die, dir)
    face = die.face
    if dir == 'E'
        face[1], face[3], face[4], face[6] = face[4], face[1], face[6], face[3]
    elseif dir == 'W'
        face[1], face[3], face[4], face[6] = face[3], face[6], face[1], face[4]
    elseif dir == 'N'
        face[1], face[2], face[5], face[6] = face[2], face[6], face[1], face[5]
    else
        face[1], face[2], face[5], face[6] = face[5], face[1], face[6], face[2]
    end
end

findindex(a, v) = findfirst(x -> x == a, v)
Base.copy(d::Die) = Die(copy(d.face))

function issamedice(die1, die2)
    if die1.face == die2.face
        return true
    end

    for i in "EEENEEENEEENNEEESEEESEEE"
        roll!(die2, i)
        if die1.face == die2.face
            return true
        end
    end

    return false
end


function solve()
    n = parse(Int, readline())
    die = Die(split(readline()))
    for _ in 1:n-1
        dietmp = Die(split(readline()))
        if issamedice(die, dietmp)
            println("No")
            return
        end
    end
    println("Yes")
end
solve()
