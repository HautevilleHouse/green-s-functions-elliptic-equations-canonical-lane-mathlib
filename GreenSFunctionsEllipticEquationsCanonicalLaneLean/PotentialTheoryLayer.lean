import canonicalLaneMathlib.AdmissibleClass
import GreenSFunctionsEllipticEquationsCanonicalLaneLean.GreenBasicDefinitions

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure PotentialTheoryPackage (G : GreenFunctionSpace) (E : EllipticOperatorData) where
  singleLayerPotential : Prop
  doubleLayerPotential : Prop
  jumpRelations : Prop
  integralEquationSolvability : Prop

structure PotentialTheoryEvidence {G : GreenFunctionSpace} {E : EllipticOperatorData}
    (P : PotentialTheoryPackage G E) where
  singleLayerPotentialClosed : P.singleLayerPotential
  doubleLayerPotentialClosed : P.doubleLayerPotential
  jumpRelationsClosed : P.jumpRelations
  integralEquationSolvabilityClosed : P.integralEquationSolvability

def PotentialTheoryClosed {G : GreenFunctionSpace} {E : EllipticOperatorData}
    (P : PotentialTheoryPackage G E) : Prop :=
  P.singleLayerPotential ∧ P.doubleLayerPotential ∧
  P.jumpRelations ∧ P.integralEquationSolvability

theorem potential_theory_closed_from_evidence
    {G : GreenFunctionSpace} {E : EllipticOperatorData}
    (P : PotentialTheoryPackage G E) (Ev : PotentialTheoryEvidence P) :
    PotentialTheoryClosed P := by
  exact And.intro Ev.singleLayerPotentialClosed
    (And.intro Ev.doubleLayerPotentialClosed
      (And.intro Ev.jumpRelationsClosed Ev.integralEquationSolvabilityClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse