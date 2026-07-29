import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure CohomologicalComplexPackage where
  complexSpace : Type u
  topology : TopologicalSpace complexSpace
  dimension : ℕ
  sheafCohomology : ℕ → Type v
  cohomologyClassDecomposition : Prop
  residuePairing : ℕ → ℕ → Type w
  residuePairingNondegenerate : ∀ p q, Prop

structure CohomologicalComplexEvidence (C : CohomologicalComplexPackage) where
  cohomologyClassDecompositionClosed : C.cohomologyClassDecomposition
  residuePairingNondegenerateClosed : ∀ p q, C.residuePairingNondegenerate p q

def CohomologicalComplexClosed (C : CohomologicalComplexPackage) : Prop :=
  C.cohomologyClassDecomposition ∧ ∀ p q, C.residuePairingNondegenerate p q

theorem cohomological_complex_closed_from_evidence
    (C : CohomologicalComplexPackage) (E : CohomologicalComplexEvidence C) :
    CohomologicalComplexClosed C := by
  exact And.intro E.cohomologyClassDecompositionClosed E.residuePairingNondegenerateClosed

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse