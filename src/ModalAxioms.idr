module ModalAxioms

-- Not : Type -> Type
-- Not a = a -> Void


-- Not (Not a) =/= a


export
data Necessary p = Box' p

-- axiom K
export
AxK : Necessary (p -> q) -> (Necessary p -> Necessary q)
AxK (Box' f) = \(Box' x) => Box' (f x)

-- axiom T
export
AxT : Necessary p -> p
AxT (Box' x) = x

-- axiom 4
export
Ax4 : Necessary p -> Necessary (Necessary p)
Ax4 = Box'


export
data Possible a = Diamond' a


export
AxX : Necessary (p -> Possible q) -> (Possible p -> Possible q)
AxX (Box' f) = \(Diamond' x) => f x


export
AxY : p -> Possible p
AxY x = Diamond' x


-- export Diamond : a -> Possible a
-- Diamond x = Diamond' x


-- necessaryNotIsNotPossible : Necessary (Not p) -> Not (Possible p)
-- necessaryNotIsNotPossible (Box contra) = \(Diamond' prf) => contra prf


-- possibleNotIsNotNecessary : Necessary (Not p) -> Not (Possible p)
-- possibleNotIsNotNecessary (Box contra) = \(Diamond' prf) => contra prf

--
-- necessaryDistributes : Necessary (a -> b) -> (Necessary a -> Necessary b)
-- necessaryDistributes (Box f) = \(Box x) => Box y
--


-- possibleIsNotNecessaryNot : Possible p -> Necessary (Not p) -> Void
-- possibleIsNotNecessaryNot (Diamond' x) = ?xx
