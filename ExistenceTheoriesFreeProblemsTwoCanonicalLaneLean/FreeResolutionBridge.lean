import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure FreeResolutionPackage where
  generatorsSet : Type u
  relationsSet : Type v
  resolutionObject : Type w
  freeNature : Prop
  resolutionMap : generatorsSet → resolutionObject
  exactnessCondition : Prop

structure FreeResolutionEvidence (F : FreeResolutionPackage) where
  freeNatureClosed : F.freeNature
  exactnessConditionClosed : F.exactnessCondition

def FreeResolutionClosed (F : FreeResolutionPackage) : Prop :=
  F.freeNature ∧ F.exactnessCondition

theorem free_resolution_closed_from_evidence (F : FreeResolutionPackage)
    (Fv : FreeResolutionEvidence F) : FreeResolutionClosed F :=
  And.intro Fv.freeNatureClosed Fv.exactnessConditionClosed

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse