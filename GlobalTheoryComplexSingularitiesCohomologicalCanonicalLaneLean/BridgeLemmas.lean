import canonicalLaneMathlib.AdmissibleClass
import GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusionTerm

end GlobalTheoryComplexSingularitiesCohomologicalCanonicalLaneLean
end HautevilleHouse