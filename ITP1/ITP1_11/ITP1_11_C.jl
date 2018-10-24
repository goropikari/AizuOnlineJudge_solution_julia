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

die1 = Die(split(readline()))
die2 = Die(split(readline()))
if issamedice(die1, die2)
    println("Yes")
else
    println("No")
end
