import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure FreeBoundaryRegularityPackage where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  optimalRegularity : Prop
  regularityUniform : Prop

structure FreeBoundaryRegularityEvidence (R : FreeBoundaryRegularityPackage) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  optimalRegularityClosed : R.optimalRegularity
  regularityUniformClosed : R.regularityUniform

def FreeBoundaryRegularityClosed (R : FreeBoundaryRegularityPackage) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.optimalRegularity ∧ R.regularityUniform

theorem free_boundary_regularity_closed_from_evidence (R : FreeBoundaryRegularityPackage)
    (Rv : FreeBoundaryRegularityEvidence R) : FreeBoundaryRegularityClosed R := by
  exact And.intro Rv.interiorRegularityClosed
    (And.intro Rv.boundaryRegularityClosed
      (And.intro Rv.optimalRegularityClosed Rv.regularityUniformClosed))

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse
