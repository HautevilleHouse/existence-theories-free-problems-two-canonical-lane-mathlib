import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure ExistenceFunctorPackage where
  sourceObject : Type u
  targetObject : Type v
  functorMap : sourceObject → targetObject
  existenceCondition : Prop
  freeProblemResolution : Prop

structure ExistenceFunctorEvidence (E : ExistenceFunctorPackage) where
  existenceConditionClosed : E.existenceCondition
  freeProblemResolutionClosed : E.freeProblemResolution

def ExistenceFunctorClosed (E : ExistenceFunctorPackage) : Prop :=
  E.existenceCondition ∧ E.freeProblemResolution

theorem existence_functor_closed_from_evidence (E : ExistenceFunctorPackage)
    (Ev : ExistenceFunctorEvidence E) : ExistenceFunctorClosed E :=
  And.intro Ev.existenceConditionClosed Ev.freeProblemResolutionClosed

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse