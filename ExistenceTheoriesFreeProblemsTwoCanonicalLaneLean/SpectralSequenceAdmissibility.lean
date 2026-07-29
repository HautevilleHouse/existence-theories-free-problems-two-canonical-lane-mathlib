import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure SpectralSequencePackage (C : ChainComplexPackage) where
  pages : (r : ℕ) → {p q : ℤ} → Type u
  differentialsSpectral : (r : ℕ) → {p q : ℤ} → (pages r p q → pages r (p-r) (q+r-1))
  convergenceCondition : Prop
  freeAbelianGroup : (r : ℕ) → {p q : ℤ} → AbelianGroup (pages r p q)

structure SpectralSequenceEvidence (S : SpectralSequencePackage) where
  convergenceConditionClosed : S.convergenceCondition
  freeAbelianGroupClosed : (r : ℕ) → {p q : ℤ} → FreeAbelian (S.pages r p q)

def SpectralSequenceClosed (S : SpectralSequencePackage) : Prop :=
  S.convergenceCondition ∧ (∀ (r : ℕ) (p q : ℤ), FreeAbelian (S.pages r p q))

theorem spectral_sequence_closed_from_evidence (S : SpectralSequencePackage)
    (Sv : SpectralSequenceEvidence S) : SpectralSequenceClosed S :=
  And.intro Sv.convergenceConditionClosed (by
    intro r p q
    exact Sv.freeAbelianGroupClosed r p q)

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse