import canonicalLaneMathlib.AdmissibleClass
import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.PrimitiveComplexManifold

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

structure GlobalTheoryComplexSingularitiesAdmittedObject where
  manifold : PrimitiveComplexManifold
  singularityResolution : SingularityResolutionPackage manifold
  sheafCohomology : SheafCohomologyPackage manifold
  mixedHodgeStructure : MixedHodgeStructurePackage manifold
  vanishingTheorem : VanishingTheoremPackage manifold sheafCohomology
  intersectionCohomology : IntersectionCohomologyPackage manifold
  conclusion : Prop
  conclusionTerm : conclusion

structure AdmissibleClass where
  object : GlobalTheoryComplexSingularitiesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse