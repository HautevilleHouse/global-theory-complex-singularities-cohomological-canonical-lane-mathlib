import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.CohomologicalComplexCanonical

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure MonodromyLocalSystemPackage {C : CohomologicalComplexPackage} where
  localSystem : Type u
  monodromyRepresentation : ℕ → Type v
  vanishingCycleData : Prop
  picardLefschetzFormula : Prop

structure MonodromyLocalSystemEvidence {C : CohomologicalComplexPackage}
    (M : MonodromyLocalSystemPackage C) where
  vanishingCycleDataClosed : M.vanishingCycleData
  picardLefschetzFormulaClosed : M.picardLefschetzFormula

def MonodromyLocalSystemClosed {C : CohomologicalComplexPackage}
    (M : MonodromyLocalSystemPackage C) : Prop :=
  M.vanishingCycleData ∧ M.picardLefschetzFormula

theorem monodromy_local_system_closed_from_evidence
    {C : CohomologicalComplexPackage} (M : MonodromyLocalSystemPackage C)
    (E : MonodromyLocalSystemEvidence M) : MonodromyLocalSystemClosed M := by
  exact And.intro E.vanishingCycleDataClosed E.picardLefschetzFormulaClosed

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse