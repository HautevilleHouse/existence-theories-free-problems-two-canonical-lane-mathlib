import canonicalLaneMathlib.AdmissibleClass

/-!
# Free Constraint Space Package
-/

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure FreeConstraintSpace where
  baseSpace : Type u
  fiberType : Type v
  sectionSpace : Type w
  constraintFunction : sectionSpace → Prop
  topologyCompatible : Prop
  constraintFunctionTerm : constraintFunction
  topologyCompatibleTerm : topologyCompatible

structure FreeConstraintEvidence (F : FreeConstraintSpace) where
  constraintFunctionClosed : F.constraintFunction
  topologyCompatibleClosed : F.topologyCompatible

def FreeConstraintClosed (F : FreeConstraintSpace) : Prop :=
  F.constraintFunction ∧ F.topologyCompatible

theorem free_constraint_closed_from_evidence (F : FreeConstraintSpace) (E : FreeConstraintEvidence F) :
    FreeConstraintClosed F := by
  exact And.intro E.constraintFunctionClosed E.topologyCompatibleClosed

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse