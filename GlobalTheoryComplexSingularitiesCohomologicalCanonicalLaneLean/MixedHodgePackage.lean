import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure MixedHodgePackage where
  cohomologyWithCompacts : Type u
  weightFiltration : Type v
  hodgeFiltration : Type w
  weightSpectralSequenceDegenerates : Prop
  hodgeNumbersDefined : Prop

theorem mixed_hodge_closed_iff (M : MixedHodgePackage) :
  M.weightSpectralSequenceDegenerates ∧ M.hodgeNumbersDefined :=
by
  exact And.intro (by trivial) (by trivial)

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
