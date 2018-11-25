module Logic.QML

data PossibleWorld

data Individual


r : PossibleWorld -> PossibleWorld -> Bool


Formula : Type
Formula = PossibleWorld -> Bool


mnot : Formula -> Formula
mnot phi = \w => not (phi w)


mnegpred : (Individual -> Formula) -> Individual -> Formula
mnegpred phi = \x => \w => not (phi x w)


mand : Formula -> Formula -> Formula
mand phi psi = \w => phi w && psi w


mor : Formula -> Formula -> Formula
mor phi psi = \w => phi w || psi w


mimplies : Formula -> Formula -> Formula
mimplies phi psi = \w => mnot (phi `mand` (mnot psi))


mequiv : Formula -> Formula -> Formula
mequiv phi psi = (phi `mimplies` psi) `mand` (psi `mimplies` phi)


mforall : (a -> Formula) -> Formula
mforall phif = ?x
