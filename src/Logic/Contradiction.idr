module Logic.Contradiction

||| Type with no constructors.
data Void'


||| Anything can be proven from a contradiction. This function has no cases, since Void has no construcors.
void' : Void' -> a



||| Negation
Not' : Type -> Type
Not' a = a -> Void
