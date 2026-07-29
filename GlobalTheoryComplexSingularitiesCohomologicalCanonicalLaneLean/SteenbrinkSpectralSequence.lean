import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.MilnorFibration

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomological

structure SteenbrinkSpectralSequencePackage {A : AdmissibleClass}
    (M : MilnorFibrationPackage A) where
  mixedHodgeStructure : Prop
  spectralSequenceDegeneration : Prop
  monodromyWeightFiltration : Prop
  vanishingCycleSheaf : Prop

structure SteenbrinkSpectralSequenceEvidence {A : AdmissibleClass}
    {M : MilnorFibrationPackage A} (S : SteenbrinkSpectralSequencePackage M) where
  mixedHodgeStructureClosed : S.mixedHodgeStructure
  spectralSequenceDegenerationClosed : S.spectralSequenceDegeneration
  monodromyWeightFiltrationClosed : S.monodromyWeightFiltration
  vanishingCycleSheafClosed : S.vanishingCycleSheaf

def SteenbrinkSpectralSequenceClosed {A : AdmissibleClass}
    {M : MilnorFibrationPackage A} (S : SteenbrinkSpectralSequencePackage M) : Prop :=
  S.mixedHodgeStructure ∧ S.spectralSequenceDegeneration ∧
  S.monodromyWeightFiltration ∧ S.vanishingCycleSheaf

theorem steenbrink_spectral_sequence_closed_from_evidence
    {A : AdmissibleClass} {M : MilnorFibrationPackage A}
    (S : SteenbrinkSpectralSequencePackage M) (E : SteenbrinkSpectralSequenceEvidence S) :
    SteenbrinkSpectralSequenceClosed S := by
  exact And.intro E.mixedHodgeStructureClosed
    (And.intro E.spectralSequenceDegenerationClosed
      (And.intro E.monodromyWeightFiltrationClosed E.vanishingCycleSheafClosed))

end GlobalTheoryComplexSingularitiesCohomological
end HautevilleHouse
