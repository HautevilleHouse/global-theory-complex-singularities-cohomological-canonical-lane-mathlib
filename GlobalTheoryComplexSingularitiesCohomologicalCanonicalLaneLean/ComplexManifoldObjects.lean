import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure ComplexManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Type
  dimension : Nat
  smoothCompact : Prop

structure SingularityAdmittedObject where
  manifold : ComplexManifold
  isolatedSingularity : Prop
  milnorNumberFinite : Prop
  cohomologicalMilnorAlgebra : Type
  monodromyOperator : Type
  conclusion : isolatedSingularity ∧ milnorNumberFinite

def SingularityWitnessClosed (O : SingularityAdmittedObject) : Prop :=
  O.conclusion

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
