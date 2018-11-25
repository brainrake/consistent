module Logic.DeMorgan

import Control.Isomorphism

%default total
%lang UniquenessTypes



||| To know `Either a b` is either to know `Left a` or to know `Right b`.
||| (from prelude)
data Either' a b
    = Left a
    | Right b

||| ∨ - introduction left
left' : a -> Either a b
left' x = Left x

||| ∨ - introduction right
right' : b -> Either a b
right' y = Right y

||| ∨ - elimination
either' : Either a b -> (a -> c) -> (b -> c) -> c
either' (Left x) f _ = f x
either' (Right y) _ g = g y



||| To know `Both a b` is to know that `a` and to know that `b`.
Both : Type -> Type -> Type
Both a b = (a, b)

||| ∧ - introduction
pair' : a -> b -> Both a b
pair' x y = (x, y)

||| ∧ - elimination left
fst' : Both a b -> a
fst' (a, b) = a

||| ∧ - elimination right
snd' : Both a b -> b
snd' (a, b) = b




main : IO ()
main = do
    let x1 = ((the (Unique Nat) 1), (the Nat 2))
    let x2 = ((the (Unique Nat) 1), (the Nat 2))
    let y1 = fst x1
    let y2 = fst x2
    let z = y + 1
    let w = y -1
    print z
    print w




||| We know `Neither a b` when knowing `Either a b` would be a contradiction.
Neither : Type -> Type -> Type
Neither a b = Not (Either a b)







||| DeMorgan's Laws for classical logic:
||| ¬(a ∨ b) ↔ ¬a ∧ ¬b
||| ¬(a ∧ b) ↔ ¬a ∨ ¬b
||| In constructive logic, the last one holds only right to left, not left to right.



||| first law, left to right.
||| ¬(a ∨ b) → ¬a ∧ ¬b
neither_to_bothn : Not (Either a b) -> Both (Not a) (Not b)
neither_to_bothn contra = (contra . Left, contra . Right)

||| First law, right to left.
||| ¬a ∧ ¬b → ¬(a ∨ b)
bothn_to_neither : Both (Not a) (Not b) -> Not (Either a b)
bothn_to_neither (contra, _) (Left left) = contra left
bothn_to_neither (_, contra) (Right right) = contra right

|||| Second law, right to left.
eithern_to_nboth : Either (Not a) (Not b) -> Not (Both a b)
eithern_to_nboth (Left contra) = contra . fst
eithern_to_nboth (Right contra) = contra . snd

||| Second law, left to right, requiring the extra assumption that at least one proposition is true
||| ¬(a ∧ b) ↔ ¬a ∨ ¬b
nboth_to_either_to_eithern : Not (Both a b) -> Either a b -> Either (Not a) (Not b)
nboth_to_either_to_eithern contra (Left x) = Right (\y => contra (x, y))
nboth_to_either_to_eithern contra (Right y) = Left (\x => contra (x, y))


-- other stuff

both_to_not_either_not : Both a b -> Not (Either (Not a) (Not b))
both_to_not_either_not (x, _) (Left contra) = contra x
both_to_not_either_not (_, y) (Right contra) = contra y

--
-- not_either_not_is_both : Not (Either (Not a) (Not b)) -> Not (Not (Both a b))
-- not_either_not_is_bot
--



-- first law is an isomorphism
-- isoNor : Iso (Not (Either a b)) (Not a, Not b)
-- isoNor = MkIso
--     nor_to_both_not
--     both_not_to_nor
--     ?prf1
--     ?prf2
