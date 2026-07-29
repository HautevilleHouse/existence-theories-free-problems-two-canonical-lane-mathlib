import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure FreeProblemAdmissibilityPackage where
  admissibleDomain : Prop
  freeBoundaryCondition : Prop
  coercivityEstimate : Prop
  weakSolutionExists : Prop

structure FreeProblemAdmissibilityEvidence (F : FreeProblemAdmissibilityPackage) where
  admissibleDomainClosed : F.admissibleDomain
  freeBoundaryConditionClosed : F.freeBoundaryCondition
  coercivityEstimateClosed : F.coercivityEstimate
  weakSolutionExistsClosed : F.weakSolutionExists

def FreeProblemAdmissibilityClosed (F : FreeProblemAdmissibilityPackage) : Prop :=
  F.admissibleDomain ∧ F.freeBoundaryCondition ∧ F.coercivityEstimate ∧ F.weakSolutionExists

theorem free_problem_admissibility_closed_from_evidence (F : FreeProblemAdmissibilityPackage)
    (Fv : FreeProblemAdmissibilityEvidence F) : FreeProblemAdmissibilityClosed F := by
  exact And.intro Fv.admissibleDomainClosed
    (And.intro Fv.freeBoundaryConditionClosed
      (And.intro Fv.coercivityEstimateClosed Fv.weakSolutionExistsClosed))

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse
