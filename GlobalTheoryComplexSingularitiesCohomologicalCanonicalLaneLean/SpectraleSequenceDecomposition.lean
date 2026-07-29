import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure SpectralSequenceDecompositionPackage where
  e2Page : Prop
  differentials : Prop
  convergenceToLimits : Prop
  edgeMaps : Prop

structure SpectralSequenceDecompositionEvidence
    (S : SpectralSequenceDecompositionPackage) where
  e2PageClosed : S.e2Page
  differentialsClosed : S.differentials
  convergenceToLimitsClosed : S.convergenceToLimits
  edgeMapsClosed : S.edgeMaps

def SpectralSequenceDecompositionClosed
    (S : SpectralSequenceDecompositionPackage) : Prop :=
  S.e2Page ∧ S.differentials ∧
  S.convergenceToLimits ∧ S.edgeMaps

theorem spectral_sequence_decomposition_closed_from_evidence
    (S : SpectralSequenceDecompositionPackage)
    (E : SpectralSequenceDecompositionEvidence S) :
    SpectralSequenceDecompositionClosed S := by
  exact And.intro E.e2PageClosed
    (And.intro E.differentialsClosed
      (And.intro E.convergenceToLimitsClosed E.edgeMapsClosed))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse