import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure MappingConePackage (F : FreeResolutionPackage) (E : ExistenceFunctorPackage) where
  coneObject : Type u
  inclusionMap : F.generatorsSet → coneObject
  projectionMap : coneObject → E.targetObject
  exactTriangle : Prop
  freeExactness : Prop

structure MappingConeEvidence {F : FreeResolutionPackage} {E : ExistenceFunctorPackage}
    (M : MappingConePackage F E) where
  exactTriangleClosed : M.exactTriangle
  freeExactnessClosed : M.freeExactness

def MappingConeClosed {F : FreeResolutionPackage} {E : ExistenceFunctorPackage}
    (M : MappingConePackage F E) : Prop :=
  M.exactTriangle ∧ M.freeExactness

theorem mapping_cone_closed_from_evidence {F : FreeResolutionPackage} {E : ExistenceFunctorPackage}
    (M : MappingConePackage F E) (Mv : MappingConeEvidence M) : MappingConeClosed M :=
  And.intro Mv.exactTriangleClosed Mv.freeExactnessClosed

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse