import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GreenSFunctionsEllipticEquationsCanonicalLaneLean.GreenSFunctions

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure PotentialTheoryPackage {n : Nat} {L : EllipticOperator n} (G : GreenSFunction n L) where
  layerPotentials : Prop
  integralOperators : Prop
  representationTheorems : Prop
  poissonIntegralFormula : Prop

structure PotentialTheoryEvidence {n : Nat} {L : EllipticOperator n} {G : GreenSFunction n L}
    (P : PotentialTheoryPackage G) where
  layerPotentialsClosed : P.layerPotentials
  integralOperatorsClosed : P.integralOperators
  representationTheoremsClosed : P.representationTheorems
  poissonIntegralFormulaClosed : P.poissonIntegralFormula

def PotentialTheoryClosed {n : Nat} {L : EllipticOperator n} {G : GreenSFunction n L}
    (P : PotentialTheoryPackage G) : Prop :=
  P.layerPotentials ∧ P.integralOperators ∧ P.representationTheorems ∧ P.poissonIntegralFormula

theorem potential_theory_closed_from_evidence
    {n : Nat} {L : EllipticOperator n} {G : GreenSFunction n L}
    (P : PotentialTheoryPackage G) (E : PotentialTheoryEvidence P) :
    PotentialTheoryClosed P := by
  exact And.intro E.layerPotentialsClosed
    (And.intro E.integralOperatorsClosed
      (And.intro E.representationTheoremsClosed E.poissonIntegralFormulaClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse