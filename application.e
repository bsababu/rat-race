note
    description : "root class of the application"
    date        : "$Date$"
    revision    : "$Revision$"

class
    APPLICATION

inherit
    RACE

create
    make

feature {NONE} -- Initialization

    make
            -- Run application.
        do
            -- Add your code here
            RACE.make
        end

end
