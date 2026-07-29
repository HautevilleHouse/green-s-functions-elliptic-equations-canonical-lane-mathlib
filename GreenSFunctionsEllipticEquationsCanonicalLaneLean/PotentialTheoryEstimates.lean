import canonicalLaneMathlib.AdmissibleClass

/-!
# Potential Theory Estimates Package
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure PotentialTheoryEstimatesPackage where
  poissonRepresentation : Prop
  continuityUpToBoundary : Prop
  gradientEstimates : Prop
  interiorHolderBounds : Prop
  maximumPrinciple : Prop

structure PotentialTheoryEstimatesEvidence (P : PotentialTheoryEstimatesPackage) where
  poissonRepresentationClosed : P.poissonRepresentation
  continuityUpToBoundaryClosed : P.continuityUpToBoundary
  gradientEstimatesClosed : P.gradientEstimates
  interiorHolderBoundsClosed : P.interiorHolderBounds
  maximumPrincipleClosed : P.maximumPrinciple

def PotentialTheoryEstimatesClosed (P : PotentialTheoryEstimatesPackage) : Prop :=
  P.poissonRepresentation ∧ P.continuityUpToBoundary ∧
  P.gradientEstimates ∧ P.interiorHolderBounds ∧ P.maximumPrinciple

theorem potential_theory_estimates_closed_from_evidence
    (P : PotentialTheoryEstimatesPackage) (Ev : PotentialTheoryEstimatesEvidence P) :
    PotentialTheoryEstimatesClosed P :=
  And.intro Ev.poissonRepresentationClosed
    (And.intro Ev.continuityUpToBoundaryClosed
      (And.intro Ev.gradientEstimatesClosed
        (And.intro Ev.interiorHolderBoundsClosed Ev.maximumPrincipleClosed)))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse