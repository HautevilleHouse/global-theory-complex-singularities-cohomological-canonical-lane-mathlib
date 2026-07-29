import canonicalLaneMathlib.AdmissibleClass
import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.PrimitiveComplexManifold

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure SingularityResolutionPackage (M : PrimitiveComplexManifold) where
  resolutionType : Type
  exceptionalDivisors : Type
  resolutionMap : Type
  smooth : Prop
  birational : Prop
  normalCrossings : Prop
  smoothTerm : smooth
  birationalTerm : birational
  normalCrossingsTerm : normalCrossings

structure SingularityResolutionEvidence (M : PrimitiveComplexManifold) (R : SingularityResolutionPackage M) where
  smoothClosed : R.smooth
  birationalClosed : R.birational
  normalCrossingsClosed : R.normalCrossings

def SingularityResolutionClosed (M : PrimitiveComplexManifold) (R : SingularityResolutionPackage M) : Prop :=
  R.smooth ∧ R.birational ∧ R.normalCrossings

theorem singularity_resolution_closed_from_evidence (M : PrimitiveComplexManifold) (R : SingularityResolutionPackage M) (E : SingularityResolutionEvidence M R) : SingularityResolutionClosed M R := by
  exact And.intro E.smoothClosed (And.intro E.birationalClosed E.normalCrossingsClosed)

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse