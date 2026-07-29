import canonicalLaneMathlib.AdmissibleClass
import GreenSFunctionsEllipticEquationsCanonicalLaneLean.GreenBasicDefinitions

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure GreenExistencePackage (G : GreenFunctionSpace) (E : EllipticOperatorData) where
  fundamentalSolutionConstructed : Prop
  representationFormulaHolds : Prop
  boundaryConditionsSatisfied : Prop
  uniquenessUnderGrowth : Prop

structure GreenExistenceEvidence {G : GreenFunctionSpace} {E : EllipticOperatorData}
    (P : GreenExistencePackage G E) where
  fundamentalSolutionConstructedClosed : P.fundamentalSolutionConstructed
  representationFormulaHoldsClosed : P.representationFormulaHolds
  boundaryConditionsSatisfiedClosed : P.boundaryConditionsSatisfied
  uniquenessUnderGrowthClosed : P.uniquenessUnderGrowth

def GreenExistenceClosed {G : GreenFunctionSpace} {E : EllipticOperatorData}
    (P : GreenExistencePackage G E) : Prop :=
  P.fundamentalSolutionConstructed ∧ P.representationFormulaHolds ∧
  P.boundaryConditionsSatisfied ∧ P.uniquenessUnderGrowth

theorem green_existence_closed_from_evidence
    {G : GreenFunctionSpace} {E : EllipticOperatorData}
    (P : GreenExistencePackage G E) (Ev : GreenExistenceEvidence P) :
    GreenExistenceClosed P := by
  exact And.intro Ev.fundamentalSolutionConstructedClosed
    (And.intro Ev.representationFormulaHoldsClosed
      (And.intro Ev.boundaryConditionsSatisfiedClosed Ev.uniquenessUnderGrowthClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse