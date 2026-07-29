import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.HodgeStructureDegeneration

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure VanishingCyclePerverseSheafPackage {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} {H : HodgeStructureDegenerationPackage C M} where
  perverseSheaf : Type u
  vanishingCycleFunctor : Type v
  nearbyCycleFunctor : Type w
  gluingHexagonProperty : Prop
  perverseTStructureCompatible : Prop
  vanishingCycleDecomposition : Prop

structure VanishingCyclePerverseSheafEvidence {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} {H : HodgeStructureDegenerationPackage C M}
    (V : VanishingCyclePerverseSheafPackage C M H) where
  gluingHexagonPropertyClosed : V.gluingHexagonProperty
  perverseTStructureCompatibleClosed : V.perverseTStructureCompatible
  vanishingCycleDecompositionClosed : V.vanishingCycleDecomposition

def VanishingCyclePerverseSheafClosed {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} {H : HodgeStructureDegenerationPackage C M}
    (V : VanishingCyclePerverseSheafPackage C M H) : Prop :=
  V.gluingHexagonProperty ∧ V.perverseTStructureCompatible ∧ V.vanishingCycleDecomposition

theorem vanishing_cycle_perverse_sheaf_closed_from_evidence
    {C : CohomologicalComplexPackage} {M : MonodromyLocalSystemPackage C}
    {H : HodgeStructureDegenerationPackage C M} (V : VanishingCyclePerverseSheafPackage C M H)
    (E : VanishingCyclePerverseSheafEvidence V) : VanishingCyclePerverseSheafClosed V := by
  exact And.intro E.gluingHexagonPropertyClosed
    (And.intro E.perverseTStructureCompatibleClosed E.vanishingCycleDecompositionClosed)

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse