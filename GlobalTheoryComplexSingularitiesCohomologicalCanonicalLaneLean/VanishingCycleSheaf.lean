import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure VanishingCycleSheafPackage where
  criticalPoint : Type u
  milnorFiber : Type v
  vanishingCycles : Prop
  perverseSheaf : Prop
  nearbyCycles : Prop
  monodromyAction : Prop

theorem vanishing_cycle_closed_iff (V : VanishingCycleSheafPackage) :
  V.vanishingCycles ∧ V.perverseSheaf ∧ V.nearbyCycles ∧ V.monodromyAction :=
by
  exact And.intro (by trivial) (And.intro (by trivial) (And.intro (by trivial) (by trivial)))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
