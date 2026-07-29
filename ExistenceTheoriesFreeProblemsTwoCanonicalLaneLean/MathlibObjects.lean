import ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ExistenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ExistenceAdmittedObject where
  space : ExistenceSpace
  existenceProperty : Prop
  freeCondition : Prop
  witnessModel : Type
  witnessTopology : TopologicalSpace witnessModel
  existenceWitness : Prop
  conclusion : existenceWitness

structure ExistenceEndgameState where
  object : ExistenceAdmittedObject

def ExistenceWitnessClosed (O : ExistenceAdmittedObject) : Prop :=
  O.existenceWitness

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse