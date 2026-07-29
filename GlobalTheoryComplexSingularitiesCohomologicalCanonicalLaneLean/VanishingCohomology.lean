import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure VanishingCohomologyPackage where
  isolatedHypersurfaceSingularity : Type u
  milnorFiber : Type v
  vanishingCycles : Type w
  vanishingCohomologyModule : Prop
  monodromyOperator : Prop
  seifertFormDefined : Prop
  spectrumDefined : Prop

structure VanishingCohomologyEvidence (V : VanishingCohomologyPackage) where
  vanishingCohomologyModuleClosed : V.vanishingCohomologyModule
  monodromyOperatorClosed : V.monodromyOperator
  seifertFormDefinedClosed : V.seifertFormDefined
  spectrumDefinedClosed : V.spectrumDefined

def VanishingCohomologyClosed (V : VanishingCohomologyPackage) : Prop :=
  V.vanishingCohomologyModule ∧ V.monodromyOperator ∧ V.seifertFormDefined ∧ V.spectrumDefined

theorem vanishing_cohomology_closed_from_evidence (V : VanishingCohomologyPackage) (E : VanishingCohomologyEvidence V) :
    VanishingCohomologyClosed V := by
  exact And.intro E.vanishingCohomologyModuleClosed (And.intro E.monodromyOperatorClosed (And.intro E.seifertFormDefinedClosed E.spectrumDefinedClosed))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
