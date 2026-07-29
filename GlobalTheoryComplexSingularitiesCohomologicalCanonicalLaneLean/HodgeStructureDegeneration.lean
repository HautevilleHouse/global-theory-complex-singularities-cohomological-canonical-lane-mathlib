import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.MonodromyLocalSystem

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure HodgeStructureDegenerationPackage {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} where
  hodgeFiltration : ℕ → Type u
  weightFiltration : ℕ → Type v
  hodgeToDeRhamDegeneration : Prop
  mixedHodgeStructureExists : Prop
  spectralSequenceDegenerates : Prop

structure HodgeStructureDegenerationEvidence {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} (H : HodgeStructureDegenerationPackage C M) where
  hodgeToDeRhamDegenerationClosed : H.hodgeToDeRhamDegeneration
  mixedHodgeStructureExistsClosed : H.mixedHodgeStructureExists
  spectralSequenceDegeneratesClosed : H.spectralSequenceDegenerates

def HodgeStructureDegenerationClosed {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} (H : HodgeStructureDegenerationPackage C M) : Prop :=
  H.hodgeToDeRhamDegeneration ∧ H.mixedHodgeStructureExists ∧ H.spectralSequenceDegenerates

theorem hodge_structure_degeneration_closed_from_evidence
    {C : CohomologicalComplexPackage} {M : MonodromyLocalSystemPackage C}
    (H : HodgeStructureDegenerationPackage C M)
    (E : HodgeStructureDegenerationEvidence H) : HodgeStructureDegenerationClosed H := by
  exact And.intro E.hodgeToDeRhamDegenerationClosed
    (And.intro E.mixedHodgeStructureExistsClosed E.spectralSequenceDegeneratesClosed)

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse