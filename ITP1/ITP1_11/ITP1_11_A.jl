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

die = Die(split(readline()))
dirs = readline()
for c in dirs
    roll!(die, c)
end
println(die.face[1])
