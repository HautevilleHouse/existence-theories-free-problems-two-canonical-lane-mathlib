import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure FreeBoundaryValueProblem where
  domain : Type u
  boundaryCondition : Prop
  interiorEquation : Prop
  solutionSpace : Type v
  boundaryConditionTerm : boundaryCondition
  interiorEquationTerm : interiorEquation

structure FreeBoundaryValueProblemEvidence (F : FreeBoundaryValueProblem) where
  boundaryConditionClosed : F.boundaryCondition
  interiorEquationClosed : F.interiorEquation

def FreeBoundaryValueProblemClosed (F : FreeBoundaryValueProblem) : Prop :=
  F.boundaryCondition ∧ F.interiorEquation

theorem free_boundary_value_problem_closed_from_evidence (F : FreeBoundaryValueProblem)
    (E : FreeBoundaryValueProblemEvidence F) : FreeBoundaryValueProblemClosed F := by
  exact And.intro E.boundaryConditionClosed E.interiorEquationClosed

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse