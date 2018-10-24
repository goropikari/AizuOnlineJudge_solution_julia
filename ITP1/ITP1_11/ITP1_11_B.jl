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

function rhs(die, up, front)
    face = die.face
    if face[1] == up && face[2] == front
        return face[3]
    end

    for i in "EEENEEENEEENNEEESEEESEEE"
        roll!(die, i)
        face = die.face
        if face[1] == up && face[2] == front
            return face[3]
        end
    end
end
die = Die(split(readline()))
n = parse(Int, readline())

for _ in 1:n
    up, front = split(readline())
    println(rhs(die, up, front))
end
