import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.SteenbrinkSpectralSequence

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure HodgeTheoryPackage {A : AdmissibleClass}
    {M : MilnorFibrationPackage A} {S : SteenbrinkSpectralSequencePackage M} where
  hodgeFiltration : Prop
  hodgeNumbers : Prop
  hodgeDecomposition : Prop
  polarizations : Prop

structure HodgeTheoryEvidence {A : AdmissibleClass}
    {M : MilnorFibrationPackage A} {S : SteenbrinkSpectralSequencePackage M}
    (H : HodgeTheoryPackage S) where
  hodgeFiltrationClosed : H.hodgeFiltration
  hodgeNumbersClosed : H.hodgeNumbers
  hodgeDecompositionClosed : H.hodgeDecomposition
  polarizationsClosed : H.polarizations

def HodgeTheoryClosed {A : AdmissibleClass}
    {M : MilnorFibrationPackage A} {S : SteenbrinkSpectralSequencePackage M}
    (H : HodgeTheoryPackage S) : Prop :=
  H.hodgeFiltration ∧ H.hodgeNumbers ∧ H.hodgeDecomposition ∧ H.polarizations

theorem hodge_theory_closed_from_evidence
    {A : AdmissibleClass} {M : MilnorFibrationPackage A}
    {S : SteenbrinkSpectralSequencePackage M} (H : HodgeTheoryPackage S)
    (E : HodgeTheoryEvidence H) : HodgeTheoryClosed H := by
  exact And.intro E.hodgeFiltrationClosed
    (And.intro E.hodgeNumbersClosed
      (And.intro E.hodgeDecompositionClosed E.polarizationsClosed))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
