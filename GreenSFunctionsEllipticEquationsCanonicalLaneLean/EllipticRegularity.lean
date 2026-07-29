import canonicalLaneMathlib.AdmissibleClass

/-!
# Elliptic Regularity Package
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure EllipticRegularityPackage where
  domainSmoothness : Prop
  coefficientEllipticity : Prop
  solutionInteriorRegularity : Prop
  boundaryRegularity : Prop
  schauderEstimates : Prop

structure EllipticRegularityEvidence (E : EllipticRegularityPackage) where
  domainSmoothnessClosed : E.domainSmoothness
  coefficientEllipticityClosed : E.coefficientEllipticity
  solutionInteriorRegularityClosed : E.solutionInteriorRegularity
  boundaryRegularityClosed : E.boundaryRegularity
  schauderEstimatesClosed : E.schauderEstimates

def EllipticRegularityClosed (E : EllipticRegularityPackage) : Prop :=
  E.domainSmoothness ∧ E.coefficientEllipticity ∧
  E.solutionInteriorRegularity ∧ E.boundaryRegularity ∧ E.schauderEstimates

theorem elliptic_regularity_closed_from_evidence
    (E : EllipticRegularityPackage) (Ev : EllipticRegularityEvidence E) :
    EllipticRegularityClosed E :=
  And.intro Ev.domainSmoothnessClosed
    (And.intro Ev.coefficientEllipticityClosed
      (And.intro Ev.solutionInteriorRegularityClosed
        (And.intro Ev.boundaryRegularityClosed Ev.schauderEstimatesClosed)))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse