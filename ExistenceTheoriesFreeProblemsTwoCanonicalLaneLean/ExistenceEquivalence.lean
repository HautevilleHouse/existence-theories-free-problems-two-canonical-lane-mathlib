import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure ExistenceEquivalencePackage where
  freeConstraint : Prop
  linearizedDual : Prop
  existenceCriteria : Prop
  equivalenceCertified : Prop

structure ExistenceEquivalenceEvidence (E : ExistenceEquivalencePackage) where
  freeConstraintClosed : E.freeConstraint
  linearizedDualClosed : E.linearizedDual
  existenceCriteriaClosed : E.existenceCriteria
  equivalenceCertifiedClosed : E.equivalenceCertified

def ExistenceEquivalenceClosed (E : ExistenceEquivalencePackage) : Prop :=
  E.freeConstraint ∧ E.linearizedDual ∧ E.existenceCriteria ∧ E.equivalenceCertified

theorem existence_equivalence_closed_from_evidence (E : ExistenceEquivalencePackage)
    (Ev : ExistenceEquivalenceEvidence E) : ExistenceEquivalenceClosed E := by
  exact And.intro Ev.freeConstraintClosed
    (And.intro Ev.linearizedDualClosed
      (And.intro Ev.existenceCriteriaClosed Ev.equivalenceCertifiedClosed))

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse
