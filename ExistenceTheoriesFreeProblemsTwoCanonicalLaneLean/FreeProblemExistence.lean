import canonicalLaneMathlib.AdmissibleClass
import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.FreeConstraintSpace

/-!
# Free Problem Existence Package
-/

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure FreeProblemExistencePackage (F : FreeConstraintSpace) where
  solutionExists : Prop
  solutionUnique : Prop
  existenceProof : solutionExists
  uniquenessProof : solutionUnique

structure FreeProblemExistenceEvidence {F : FreeConstraintSpace} (P : FreeProblemExistencePackage F) where
  solutionExistsClosed : P.solutionExists
  solutionUniqueClosed : P.solutionUnique

def FreeProblemExistenceClosed {F : FreeConstraintSpace} (P : FreeProblemExistencePackage F) : Prop :=
  P.solutionExists ∧ P.solutionUnique

theorem free_problem_existence_closed_from_evidence {F : FreeConstraintSpace}
    (P : FreeProblemExistencePackage F) (E : FreeProblemExistenceEvidence P) :
    FreeProblemExistenceClosed P := by
  exact And.intro E.solutionExistsClosed E.solutionUniqueClosed

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse