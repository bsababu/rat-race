note
    description : "the game"
    date        : "$Date$"
    revision    : "$Revision$"

class
    RACE

inherit
    CONSTANTS

create
    make

feature  -- Initialization

    make
            -- Run application.
        require -- pre-conditon
            not plyer.count < 1
             
            
        local
            i: INTEGER
            --random : MATH
            plyer : ARRAY[PLAYERS]
            --heals : INTEGER
            --board: BOARD
            --round: INTEGER
            dice: DICE
            --players_turn : CONSTANTS
            winner : BOOLEAN
            
        
            
        do
            --player_number : players.make(random.random_integer)
            create dice
            create plyer.make_filled(2,6)
            
            from
                i := 1
                --round := 1
                winner := False
            until
                -- loop in all the players - have to play or there exist a winner
                i > plyer.count or 
                winner
                
            loop
                --plyer[i] -- turn for a player
                
                if (plyer.count <= 1) then -- check the players available
                    print("game requires at most 2 to 6 players")
                    else
                    player_turn(plyer[i], dice) -- player turns
                    
                    if plyer[i].hit_points >= 50 then winner := True end
                    
                    if plyer[i].hit_points = 0 then -- checking if player hits 0
                        print("player eliminated")
                        plyer.prune(i)
                    end
                end
                i := i+ 1
            end
            
        end
        
        
    square_check (plyer: PLAYERS)
        do
            inspect
                plyer.player_move_position
            when
                10,20, 30, 40, 50
            then
                plyer.hit_points := plyer.hit_points - 5
            
            when
                5, 15, 25, 35, 45
            then
                plyer.hit_points := plyer.hit_points + 5
            else end
        end
    
    
    
    player_turn (plyer: PLAYERS; dice : DICE)
        local
            roll : INTEGER
        do
            roll:= dice.roll_dice -- rolling the dice
            plyer.player_move_position(roll) -- move the player in nxt position
            square_check(plyer) -- check the points
            
        end
    
    
end