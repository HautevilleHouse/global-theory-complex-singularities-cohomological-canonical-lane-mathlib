import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure CohomologyDeformationPackage where
  cohomologyGroups : Type u
  obstructionClass : Type v
  deformationLongExactSequence : Prop
  unobstructedCondition : Prop
  obstructionClosed : obstructionClass → Prop

theorem deformation_closed_iff_unobstructed (C : CohomologyDeformationPackage) :
  (∀ obs : C.obstructionClass, C.obstructionClosed obs) ↔ C.unobstructedCondition :=
by
  constructor
  · intro h; exact h
  · intro h obs; exact h

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
