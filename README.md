# rat-race
Develop a simple board game application called “Rat race”

## Problem Statement: 

The game consists of a board made of 50 squares, 2 to 6 players represented by colored tokens shaped as mice, and 2 six-sided dice.
All players (represented by their tokens) start from the initial square, and take turns one at the time following an initial order decided arbitrarily.
A player turn consists of rolling both dice and advancing on the board a number of squares equal to the sum of the two face-up sides of the two dice. A round consists in all players taking the same turn.
Players have initially 15 Hit Points (HP).
Squares are numbered from 1 to 50.
By landing on squares 10, 20, 30, 40, and 50 a player falls into a trap and loses 5 HP. If a player’s HP falls below 0, the player is eliminated from the game.
By landing on squares 5, 15, 25, 35, and 45 a player heals 5 HP. A player cannot heal further once reached 15 HP.
Game ends at the end of the round in which one of the players will land beyond square 50.
