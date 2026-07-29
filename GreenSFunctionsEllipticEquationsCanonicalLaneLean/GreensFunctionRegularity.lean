import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure RegularityPackage (Ω : Type) [OpenSet Ω] where
  holderEstimates : Prop
  schauderEstimates : Prop
  sobolevEmbedding : Prop
  maximumPrinciple : Prop
  regularityProof : holderEstimates ∧ schauderEstimates ∧ sobolevEmbedding ∧ maximumPrinciple

structure RegularityEvidence {Ω : Type} [OpenSet Ω] (R : RegularityPackage Ω) where
  holderEstimatesClosed : R.holderEstimates
  schauderEstimatesClosed : R.schauderEstimates
  sobolevEmbeddingClosed : R.sobolevEmbedding
  maximumPrincipleClosed : R.maximumPrinciple

def RegularityClosed {Ω : Type} [OpenSet Ω] (R : RegularityPackage Ω) : Prop :=
  R.holderEstimates ∧ R.schauderEstimates ∧ R.sobolevEmbedding ∧ R.maximumPrinciple

theorem regularity_closed_from_evidence {Ω : Type} [OpenSet Ω] (R : RegularityPackage Ω) (E : RegularityEvidence R) : RegularityClosed R := by
  exact And.intro E.holderEstimatesClosed (And.intro E.schauderEstimatesClosed (And.intro E.sobolevEmbeddingClosed E.maximumPrincipleClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
