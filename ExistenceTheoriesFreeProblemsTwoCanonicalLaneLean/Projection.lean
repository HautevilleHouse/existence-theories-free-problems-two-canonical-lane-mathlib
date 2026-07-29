import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def existenceProjection : Projection ExistenceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem existence_projection_idempotent (x : ExistenceEndgameState) :
    existenceProjection.toFun (existenceProjection.toFun x) = existenceProjection.toFun x := by
  exact existenceProjection.idempotent x

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse