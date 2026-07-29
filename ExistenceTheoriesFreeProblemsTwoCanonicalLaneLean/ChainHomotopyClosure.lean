import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean

structure ChainComplexPackage (C : MappingConePackage FreeResolutionPackage ExistenceFunctorPackage) where
  chainGroups : ℕ → Type u
  differentials : (n : ℕ) → (chainGroups (n+1) → chainGroups n)
  differentialSquareZero : (n : ℕ) → (differentials n) ∘ (differentials (n+1)) = 0
  freeChainGroups : (n : ℕ) → Free (chainGroups n)

structure HomotopyEquivalencePackage (C1 : ChainComplexPackage) (C2 : ChainComplexPackage) where
  forwardMap : (n : ℕ) → C1.chainGroups n → C2.chainGroups n
  backwardMap : (n : ℕ) → C2.chainGroups n → C1.chainGroups n
  homotopy : (n : ℕ) → C2.chainGroups n → C1.chainGroups (n+1)
  chainMapProperty : (n : ℕ) → (C2.differentials n) ∘ (forwardMap n) = (forwardMap (n+1)) ∘ (C1.differentials n)
  homotopyCondition : (n : ℕ) → (forwardMap n) ∘ (backwardMap n) - id = (C1.differentials (n+1)) ∘ (homotopy n) + (homotopy (n-1)) ∘ (C1.differentials n)

structure ChainHomotopyClosurePackage (C1 C2 : ChainComplexPackage)
    (H : HomotopyEquivalencePackage C1 C2) where
  chainEquivalence : Prop
  freeCategoryEquivalence : Prop
  homotopyInvariance : Prop

structure ChainHomotopyClosureEvidence {C1 C2 : ChainComplexPackage}
    {H : HomotopyEquivalencePackage C1 C2} (CL : ChainHomotopyClosurePackage C1 C2 H) where
  chainEquivalenceClosed : CL.chainEquivalence
  freeCategoryEquivalenceClosed : CL.freeCategoryEquivalence
  homotopyInvarianceClosed : CL.homotopyInvariance

def ChainHomotopyClosureClosed {C1 C2 : ChainComplexPackage}
    {H : HomotopyEquivalencePackage C1 C2} (CL : ChainHomotopyClosurePackage C1 C2 H) : Prop :=
  CL.chainEquivalence ∧ CL.freeCategoryEquivalence ∧ CL.homotopyInvariance

theorem chain_homotopy_closure_closed_from_evidence {C1 C2 : ChainComplexPackage}
    {H : HomotopyEquivalencePackage C1 C2} (CL : ChainHomotopyClosurePackage C1 C2 H)
    (CLv : ChainHomotopyClosureEvidence CL) : ChainHomotopyClosureClosed CL :=
  And.intro CLv.chainEquivalenceClosed
    (And.intro CLv.freeCategoryEquivalenceClosed CLv.homotopyInvarianceClosed)

end ExistenceTheoriesFreeProblemsTwoCanonicalLaneLean
end HautevilleHouse