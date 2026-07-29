import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure MixedHodgeStructurePackage where
  algebraicVariety : Type u
  weightFiltrationDefined : Prop
  hodgeFiltrationDefined : Prop
  mixedHodgeNumbersComputed : Prop
  degeneratesAtE2 : Prop
  comparisonWithDeRham : Prop

structure MixedHodgeStructureEvidence (M : MixedHodgeStructurePackage) where
  weightFiltrationDefinedClosed : M.weightFiltrationDefined
  hodgeFiltrationDefinedClosed : M.hodgeFiltrationDefined
  mixedHodgeNumbersComputedClosed : M.mixedHodgeNumbersComputed
  degeneratesAtE2Closed : M.degeneratesAtE2
  comparisonWithDeRhamClosed : M.comparisonWithDeRham

def MixedHodgeStructureClosed (M : MixedHodgeStructurePackage) : Prop :=
  M.weightFiltrationDefined ∧ M.hodgeFiltrationDefined ∧ M.mixedHodgeNumbersComputed ∧ M.degeneratesAtE2 ∧ M.comparisonWithDeRham

theorem mixed_hodge_structure_closed_from_evidence (M : MixedHodgeStructurePackage) (E : MixedHodgeStructureEvidence M) :
    MixedHodgeStructureClosed M := by
  exact And.intro E.weightFiltrationDefinedClosed (And.intro E.hodgeFiltrationDefinedClosed (And.intro E.mixedHodgeNumbersComputedClosed (And.intro E.degeneratesAtE2Closed E.comparisonWithDeRhamClosed)))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
