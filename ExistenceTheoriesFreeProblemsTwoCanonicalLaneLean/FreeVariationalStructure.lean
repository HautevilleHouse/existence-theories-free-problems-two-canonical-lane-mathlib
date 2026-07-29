import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.FreeProblemsBase

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure FreeVariationalStructure where
  variationalData : Type
  regularity : Prop
  compactness : Prop
  lowerSemicontinuity : Prop

structure FreeVariationalEvidence (V : FreeVariationalStructure) where
  regularityClosed : V.regularity
  compactnessClosed : V.compactness
  lowerSemicontinuityClosed : V.lowerSemicontinuity

def FreeVariationalClosed (V : FreeVariationalStructure) : Prop :=
  V.regularity ∧ V.compactness ∧ V.lowerSemicontinuity

theorem free_variational_closed_from_evidence (V : FreeVariationalStructure)
    (E : FreeVariationalEvidence V) : FreeVariationalClosed V := by
  exact And.intro E.regularityClosed
    (And.intro E.compactnessClosed E.lowerSemicontinuityClosed)

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse