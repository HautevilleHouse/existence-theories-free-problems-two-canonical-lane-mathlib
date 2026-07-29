import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

def ExistenceFreeProblemsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem existence_free_problems_endgame (A : AdmissibleClass) :
    ExistenceFreeProblemsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse
