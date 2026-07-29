import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure MilnorFibrationPackage where
  isolatedSingularity : Prop
  milnorFiberHomotopyType : Prop
  vanishingCycleCohomology : Prop
  monodromyAction : Prop

structure MilnorFibrationEvidence (M : MilnorFibrationPackage) where
  isolatedSingularityClosed : M.isolatedSingularity
  milnorFiberHomotopyTypeClosed : M.milnorFiberHomotopyType
  vanishingCycleCohomologyClosed : M.vanishingCycleCohomology
  monodromyActionClosed : M.monodromyAction

def MilnorFibrationClosed (M : MilnorFibrationPackage) : Prop :=
  M.isolatedSingularity ∧ M.milnorFiberHomotopyType ∧
  M.vanishingCycleCohomology ∧ M.monodromyAction

theorem milnor_fibration_closed_from_evidence
    (M : MilnorFibrationPackage) (E : MilnorFibrationEvidence M) :
    MilnorFibrationClosed M := by
  exact And.intro E.isolatedSingularityClosed
    (And.intro E.milnorFiberHomotopyTypeClosed
      (And.intro E.vanishingCycleCohomologyClosed E.monodromyActionClosed))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse