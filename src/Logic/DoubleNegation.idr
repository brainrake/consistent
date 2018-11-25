module Logic.DoubleNegation

||| Double Negation Introduction
total
notnot_intro : a -> Not (Not a)
notnot_intro x = \contra => contra x


||| Double Negation Elimination
total
notnot_elim : Not (Not (Not a)) -> Not a
notnot_elim contra = \x => contra (notnot_intro x)
