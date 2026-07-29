import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure VariationalFreeProblem where
  lagrangian : Type u
  actionFunctional : Type v
  eulerLagrangeDerived : Prop
  existenceCriticalPoint : Prop
  eulerLagrangeDerivedTerm : eulerLagrangeDerived
  existenceCriticalPointTerm : existenceCriticalPoint

structure VariationalFreeProblemEvidence (V : VariationalFreeProblem) where
  eulerLagrangeDerivedClosed : V.eulerLagrangeDerived
  existenceCriticalPointClosed : V.existenceCriticalPoint

def VariationalFreeProblemClosed (V : VariationalFreeProblem) : Prop :=
  V.eulerLagrangeDerived ∧ V.existenceCriticalPoint

theorem variational_free_problem_closed_from_evidence (V : VariationalFreeProblem)
    (E : VariationalFreeProblemEvidence V) : VariationalFreeProblemClosed V := by
  exact And.intro E.eulerLagrangeDerivedClosed E.existenceCriticalPointClosed

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse