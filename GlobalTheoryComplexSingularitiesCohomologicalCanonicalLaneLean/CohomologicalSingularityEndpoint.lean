import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.VanishingCyclePerverseSheaf

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure CohomologicalSingularityEndpointPackage {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} {H : HodgeStructureDegenerationPackage C M}
    {V : VanishingCyclePerverseSheafPackage C M H} where
  targetVariety : Type u
  targetTopology : TopologicalSpace targetVariety
  isolated singularityClassified : Prop
  cohomologicalInvariantComputed : Prop
  endpointMatchesGlobalInvariant : Prop

structure CohomologicalSingularityEndpointEvidence {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} {H : HodgeStructureDegenerationPackage C M}
    {V : VanishingCyclePerverseSheafPackage C M H}
    (E : CohomologicalSingularityEndpointPackage C M H V) where
  isolated singularityClassifiedClosed : E.isolated singularityClassified
  cohomologicalInvariantComputedClosed : E.cohomologicalInvariantComputed
  endpointMatchesGlobalInvariantClosed : E.endpointMatchesGlobalInvariant

def CohomologicalSingularityEndpointClosed {C : CohomologicalComplexPackage}
    {M : MonodromyLocalSystemPackage C} {H : HodgeStructureDegenerationPackage C M}
    {V : VanishingCyclePerverseSheafPackage C M H}
    (E : CohomologicalSingularityEndpointPackage C M H V) : Prop :=
  E.isolated singularityClassified ∧ E.cohomologicalInvariantComputed ∧ E.endpointMatchesGlobalInvariant

theorem cohomological_singularity_endpoint_closed_from_evidence
    {C : CohomologicalComplexPackage} {M : MonodromyLocalSystemPackage C}
    {H : HodgeStructureDegenerationPackage C M} {V : VanishingCyclePerverseSheafPackage C M H}
    (E : CohomologicalSingularityEndpointPackage C M H V)
    (Ev : CohomologicalSingularityEndpointEvidence E) : CohomologicalSingularityEndpointClosed E := by
  exact And.intro Ev.isolated singularityClassifiedClosed
    (And.intro Ev.cohomologicalInvariantComputedClosed Ev.endpointMatchesGlobalInvariantClosed)

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse