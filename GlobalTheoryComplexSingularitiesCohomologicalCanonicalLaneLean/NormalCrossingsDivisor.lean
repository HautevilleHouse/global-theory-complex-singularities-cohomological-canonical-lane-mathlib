import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure NormalCrossingsDivisorPackage where
  ambientManifold : Type u
  complexDimension : Nat
  irreducibleComponents : List (Type v)
  smoothNormalCrossings : Prop
  poincareResidueMapsDefined : Prop
  logDifferentialFormsDefined : Prop
  logCanonicalBundleDefined : Prop

structure NormalCrossingsDivisorEvidence (D : NormalCrossingsDivisorPackage) where
  smoothNormalCrossingsClosed : D.smoothNormalCrossings
  poincareResidueMapsDefinedClosed : D.poincareResidueMapsDefined
  logDifferentialFormsDefinedClosed : D.logDifferentialFormsDefined
  logCanonicalBundleDefinedClosed : D.logCanonicalBundleDefined

def NormalCrossingsDivisorClosed (D : NormalCrossingsDivisorPackage) : Prop :=
  D.smoothNormalCrossings ∧ D.poincareResidueMapsDefined ∧ D.logDifferentialFormsDefined ∧ D.logCanonicalBundleDefined

theorem normal_crossings_divisor_closed_from_evidence (D : NormalCrossingsDivisorPackage) (E : NormalCrossingsDivisorEvidence D) :
    NormalCrossingsDivisorClosed D := by
  exact And.intro E.smoothNormalCrossingsClosed (And.intro E.poincareResidueMapsDefinedClosed (And.intro E.logDifferentialFormsDefinedClosed E.logCanonicalBundleDefinedClosed))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
