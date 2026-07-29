import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure ComplexStructureSheaf where
  space : Type u
  topology : TopologicalSpace space
  structureSheaf : Type v
  sheafOfRings : Prop
  locallyRinged : Prop
  transitionHolomorphic : Prop
  locallyRingedTerm : locallyRinged
  transitionHolomorphicTerm : transitionHolomorphic

theorem sheaf_closed_from_evidence (S : ComplexStructureSheaf) : S.locallyRinged ∧ S.transitionHolomorphic :=
  And.intro S.locallyRingedTerm S.transitionHolomorphicTerm

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
