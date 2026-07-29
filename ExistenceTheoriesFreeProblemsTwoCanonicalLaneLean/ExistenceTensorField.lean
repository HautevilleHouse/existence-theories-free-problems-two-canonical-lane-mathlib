import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure ExistenceTensorField where
  fiberSpace : Type u
  baseSpace : Type v
  smoothSections : Type w
  connectionDefined : Prop
  parallelTransport : Prop
  connectionDefinedTerm : connectionDefined
  parallelTransportTerm : parallelTransport

structure ExistenceTensorFieldEvidence (T : ExistenceTensorField) where
  connectionDefinedClosed : T.connectionDefined
  parallelTransportClosed : T.parallelTransport

def ExistenceTensorFieldClosed (T : ExistenceTensorField) : Prop :=
  T.connectionDefined ∧ T.parallelTransport

theorem existence_tensor_field_closed_from_evidence (T : ExistenceTensorField)
    (E : ExistenceTensorFieldEvidence T) : ExistenceTensorFieldClosed T := by
  exact And.intro E.connectionDefinedClosed E.parallelTransportClosed

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse