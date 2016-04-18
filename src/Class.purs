{-
purs-turn-based-battle, a small browser game.
Copyright (C) 2016  Emily A. Bellows

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
-}


module Class (Class(..), strength, speed, defense, moveArray) where

import Prelude
import Move (Move(..))

data Class
  = Warrior
  | Thief
  | Cleric

strength :: Class -> Number
strength Warrior = 1.0
strength Thief = 1.2
strength Cleric = 0.8

speed :: Class -> Int
speed Warrior = 8
speed Thief = 11
speed Cleric = 7

defense :: Class -> Number
defense Warrior = 1.0
defense Thief = 1.4
defense Cleric = 1.2

warriorMoveArray :: Array Move
warriorMoveArray = [ Attack, Defend ]

thiefMoveArray :: Array Move
thiefMoveArray = [ Attack, Defend ]

clericMoveArray :: Array Move
clericMoveArray = [ Attack, Defend, Heal ]

moveArray :: Class -> Array Move
moveArray Warrior = warriorMoveArray
moveArray Thief = thiefMoveArray
moveArray Cleric = clericMoveArray

instance showClass :: Show Class where
  show Warrior = "Warrior"
  show Thief = "Thief"
  show Cleric = "Cleric"
