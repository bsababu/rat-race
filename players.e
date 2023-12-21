note
    description : "player of the game "
    date        : "$Date$"
    revision    : "$Revision$"

class
    PLAYERS

--inherit
    --CONSTANTS

create
    make

feature -- Initialization

    make (ply_name: STRING) -- set player
            
        
        require
            not ply_name.is_empty
        do
            name := player_name
            start_position := 1
            hit_points := 15
            
        ensure
            name ~ player_name
        end
        
    player_move_position(move_step: INTEGER)
        -- player moves next
        do
            position:= position + move_step
        end
        
        
invariant
    hit_points: 0 <= hit_points and hit_points <=15
end
