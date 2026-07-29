import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure FreeProblem where
  baseSpace : ExistenceSpace
  problemData : Type
  constraints : Prop
  solvability : Prop

structure FreeProblemEvidence (F : FreeProblem) where
  constraintsSatisfied : F.constraints
  solutionExists : F.solvability

def FreeProblemClosed (F : FreeProblem) : Prop :=
  F.constraints ∧ F.solvability

theorem free_problem_closed_from_evidence (F : FreeProblem) (E : FreeProblemEvidence F) :
    FreeProblemClosed F := by
  exact And.intro E.constraintsSatisfied E.solutionExists

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse