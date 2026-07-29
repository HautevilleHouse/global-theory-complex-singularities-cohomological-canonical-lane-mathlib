import canonicalLaneMathlib.AdmissibleClass
import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.PrimitiveComplexManifold

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure SheafCohomologyPackage (M : PrimitiveComplexManifold) where
  sheaf : Type
  cohomologyGroups : Nat -> Type
  cohomologyClass : Type
  cechCohomology : Prop
  sheafCohomology : Prop
  cechCohomologyTerm : cechCohomology
  sheafCohomologyTerm : sheafCohomology

structure SheafCohomologyEvidence (M : PrimitiveComplexManifold) (S : SheafCohomologyPackage M) where
  cechCohomologyClosed : S.cechCohomology
  sheafCohomologyClosed : S.sheafCohomology

def SheafCohomologyClosed (M : PrimitiveComplexManifold) (S : SheafCohomologyPackage M) : Prop :=
  S.cechCohomology ∧ S.sheafCohomology

theorem sheaf_cohomology_closed_from_evidence (M : PrimitiveComplexManifold) (S : SheafCohomologyPackage M) (E : SheafCohomologyEvidence M S) : SheafCohomologyClosed M S := by
  exact And.intro E.cechCohomologyClosed E.sheafCohomologyClosed

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse