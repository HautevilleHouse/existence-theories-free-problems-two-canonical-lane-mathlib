import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  carriedRemainder A = ∅

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.remainderRecorded

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse