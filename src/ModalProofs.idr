import ModalAxioms


unNecessary : Necessary a -> a
unNecessary = AxT


nnn : Not (Not (Not a)) -> Not a
nnn x =\__pi_arg => x (\__pi_arg1 => x (\__pi_arg2 => _ _))


-- notNecessaryIsPossibleNot : Not (Necessary p) -> (Possible (Not p))
-- notNecessaryIsPossibleNot contra = Diamond (\prf => contra (Box prf))
--
--
-- notPossibleIsNecessaryNot : Not (Possible p) -> Necessary (Not p)
-- notPossibleIsNecessaryNot contra = Box (\prf => contra (Diamond prf))
--
--

-- k1 : Not (Necessary (Possible (Necessary p))) -> (Possible (Necessary (Possible (Not p))))
-- k1 contra = ?xx
