module Logic.Deontic

import Data.List



data Obligatory p = Oblige p


Ax1 : Obligatory (p -> q) -> Obligatory p -> Obligatory q
Ax1 (Oblige f) (Oblige x) = Oblige (f x)
