import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure IntersectionCohomologyPackage where
  goreskyMacphersonExtension : Prop
  poincareDuality : Prop
  kaehlerPackage : Prop
  hodgeStructure : Prop

structure IntersectionCohomologyEvidence (I : IntersectionCohomologyPackage) where
  goreskyMacphersonExtensionClosed : I.goreskyMacphersonExtension
  poincareDualityClosed : I.poincareDuality
  kaehlerPackageClosed : I.kaehlerPackage
  hodgeStructureClosed : I.hodgeStructure

def IntersectionCohomologyClosed (I : IntersectionCohomologyPackage) : Prop :=
  I.goreskyMacphersonExtension ∧ I.poincareDuality ∧
  I.kaehlerPackage ∧ I.hodgeStructure

theorem intersection_cohomology_closed_from_evidence
    (I : IntersectionCohomologyPackage) (E : IntersectionCohomologyEvidence I) :
    IntersectionCohomologyClosed I := by
  exact And.intro E.goreskyMacphersonExtensionClosed
    (And.intro E.poincareDualityClosed
      (And.intro E.kaehlerPackageClosed E.hodgeStructureClosed))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse