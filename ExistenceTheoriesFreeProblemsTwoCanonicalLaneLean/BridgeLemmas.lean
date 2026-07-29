import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse
