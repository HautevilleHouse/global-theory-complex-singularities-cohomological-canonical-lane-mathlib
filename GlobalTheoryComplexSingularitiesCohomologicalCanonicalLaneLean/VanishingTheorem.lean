import canonicalLaneMathlib.AdmissibleClass
import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.SheafCohomology

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure VanishingTheoremPackage (M : PrimitiveComplexManifold) (S : SheafCohomologyPackage M) where
  kawamataViehwegVanishing : Prop
  kodairaVanishing : Prop
  nakanoVanishing : Prop
  kawamataViehwegVanishingTerm : kawamataViehwegVanishing
  kodairaVanishingTerm : kodairaVanishing
  nakanoVanishingTerm : nakanoVanishing

structure VanishingTheoremEvidence (M : PrimitiveComplexManifold) (S : SheafCohomologyPackage M) (V : VanishingTheoremPackage M S) where
  kawamataViehwegVanishingClosed : V.kawamataViehwegVanishing
  kodairaVanishingClosed : V.kodairaVanishing
  nakanoVanishingClosed : V.nakanoVanishing

def VanishingTheoremClosed (M : PrimitiveComplexManifold) (S : SheafCohomologyPackage M) (V : VanishingTheoremPackage M S) : Prop :=
  V.kawamataViehwegVanishing ∧ V.kodairaVanishing ∧ V.nakanoVanishing

theorem vanishing_theorem_closed_from_evidence (M : PrimitiveComplexManifold) (S : SheafCohomologyPackage M) (V : VanishingTheoremPackage M S) (E : VanishingTheoremEvidence M S V) : VanishingTheoremClosed M S V := by
  exact And.intro E.kawamataViehwegVanishingClosed (And.intro E.kodairaVanishingClosed E.nakanoVanishingClosed)

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse