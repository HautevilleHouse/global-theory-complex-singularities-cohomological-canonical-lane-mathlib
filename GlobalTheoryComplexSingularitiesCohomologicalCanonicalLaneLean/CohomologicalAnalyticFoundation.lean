import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.CohomologicalSingularityEndpoint

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure CohomologicalAnalyticFoundation where
  complex : CohomologicalComplexPackage
  complexEvidence : CohomologicalComplexEvidence complex
  monodromy : MonodromyLocalSystemPackage complex
  monodromyEvidence : MonodromyLocalSystemEvidence monodromy
  hodge : HodgeStructureDegenerationPackage complex monodromy
  hodgeEvidence : HodgeStructureDegenerationEvidence hodge
  vanishing : VanishingCyclePerverseSheafPackage complex monodromy hodge
  vanishingEvidence : VanishingCyclePerverseSheafEvidence vanishing
  endpoint : CohomologicalSingularityEndpointPackage complex monodromy hodge vanishing
  endpointEvidence : CohomologicalSingularityEndpointEvidence endpoint

def CohomologicalAnalyticFoundationClosed (A : CohomologicalAnalyticFoundation) : Prop :=
  CohomologicalComplexClosed A.complex ∧
  MonodromyLocalSystemClosed A.monodromy ∧
  HodgeStructureDegenerationClosed A.hodge ∧
  VanishingCyclePerverseSheafClosed A.vanishing ∧
  CohomologicalSingularityEndpointClosed A.endpoint

theorem cohomological_analytic_foundation_closed_from_evidence
    (A : CohomologicalAnalyticFoundation) : CohomologicalAnalyticFoundationClosed A := by
  exact And.intro (cohomological_complex_closed_from_evidence A.complex A.complexEvidence)
    (And.intro (monodromy_local_system_closed_from_evidence A.monodromy A.monodromyEvidence)
      (And.intro (hodge_structure_degeneration_closed_from_evidence A.hodge A.hodgeEvidence)
        (And.intro (vanishing_cycle_perverse_sheaf_closed_from_evidence A.vanishing A.vanishingEvidence)
          (cohomological_singularity_endpoint_closed_from_evidence A.endpoint A.endpointEvidence))))

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse