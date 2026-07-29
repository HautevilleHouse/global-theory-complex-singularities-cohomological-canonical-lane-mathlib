import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure MonodromyActionPackage where
  milnorFiberMonodromy : Prop
  vanishingCycleMonodromy : Prop
  picardLefschetzFormula : Prop
  seifertForm : Prop

structure MonodromyActionEvidence (M : MonodromyActionPackage) where
  milnorFiberMonodromyClosed : M.milnorFiberMonodromy
  vanishingCycleMonodromyClosed : M.vanishingCycleMonodromy
  picardLefschetzFormulaClosed : M.picardLefschetzFormula
  seifertFormClosed : M.seifertForm

def MonodromyActionClosed (M : MonodromyActionPackage) : Prop :=
  M.milnorFiberMonodromy ∧ M.vanishingCycleMonodromy ∧
  M.picardLefschetzFormula ∧ M.seifertForm

theorem monodromy_action_closed_from_evidence
    (M : MonodromyActionPackage) (E : MonodromyActionEvidence M) :
    MonodromyActionClosed M := by
  exact And.intro E.milnorFiberMonodromyClosed
    (And.intro E.vanishingCycleMonodromyClosed
      (And.intro E.picardLefschetzFormulaClosed E.seifertFormClosed))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse