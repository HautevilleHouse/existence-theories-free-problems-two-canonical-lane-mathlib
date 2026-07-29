import canonicalLaneMathlib.AdmissibleClass
import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.ExistenceTensorField
import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.FreeBoundaryValueProblem
import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.VariationalFreeProblem
import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.FreeBoundaryRegularity

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure ExistenceTheoryPackage where
  tensorField : ExistenceTensorField
  tensorFieldEvidence : ExistenceTensorFieldEvidence tensorField
  boundaryValueProblem : FreeBoundaryValueProblem
  boundaryValueProblemEvidence : FreeBoundaryValueProblemEvidence boundaryValueProblem
  variationalProblem : VariationalFreeProblem
  variationalProblemEvidence : VariationalFreeProblemEvidence variationalProblem
  regularity : FreeBoundaryRegularity
  regularityEvidence : FreeBoundaryRegularityEvidence regularity

def ExistenceTheoryPackageClosed (P : ExistenceTheoryPackage) : Prop :=
  ExistenceTensorFieldClosed P.tensorField ∧
  FreeBoundaryValueProblemClosed P.boundaryValueProblem ∧
  VariationalFreeProblemClosed P.variationalProblem ∧
  FreeBoundaryRegularityClosed P.regularity

theorem existence_theory_package_closed_from_evidence (P : ExistenceTheoryPackage) :
    ExistenceTheoryPackageClosed P := by
  have h1 := existence_tensor_field_closed_from_evidence P.tensorField P.tensorFieldEvidence
  have h2 := free_boundary_value_problem_closed_from_evidence P.boundaryValueProblem P.boundaryValueProblemEvidence
  have h3 := variational_free_problem_closed_from_evidence P.variationalProblem P.variationalProblemEvidence
  have h4 := free_boundary_regularity_closed_from_evidence P.regularity P.regularityEvidence
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse