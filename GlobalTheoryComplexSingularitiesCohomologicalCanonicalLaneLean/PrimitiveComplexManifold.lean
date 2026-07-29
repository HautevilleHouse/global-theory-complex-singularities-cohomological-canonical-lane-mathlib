import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure PrimitiveComplexManifold where
  Point : Type
  Chart : Type
  atlas : Type
  complexCompatibility : Prop
  hausdorffSecondCountable : Prop
  compact : Prop
  connected : Prop
  dimension : Nat
  complexCompatibilityTerm : complexCompatibility
  hausdorffSecondCountableTerm : hausdorffSecondCountable
  compactTerm : compact
  connectedTerm : connected
  dimensionTerm : dimension = 2

structure PrimitiveHolomorphicVectorBundle (M : PrimitiveComplexManifold) where
  rank : Nat
  Fiber : M.Point -> Type
  holomorphicSections : Type
  transitionFunctions : Type
  holoTransitionProp : Prop
  holoTransitionPropTerm : holoTransitionProp

structure PrimitiveDifferentialForm (M : PrimitiveComplexManifold) where
  degree : Nat
  form : Type
  closed : Prop
  exact : Prop
  closedTerm : closed
  exactTerm : exact

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse