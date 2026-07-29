import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GreenSFunctionsEllipticEquationsCanonicalLaneLean.GreenSFunctions
import HautevilleHouse.GreenSFunctionsEllipticEquationsCanonicalLaneLean.EllipticRegularity
import HautevilleHouse.GreenSFunctionsEllipticEquationsCanonicalLaneLean.PotentialTheory
import HautevilleHouse.GreenSFunctionsEllipticEquationsCanonicalLaneLean.BoundaryValueProblems

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure GreenSFunctionAnalyticFoundation where
  ellipticOperator : EllipticOperator 3
  greenSFunction : GreenSFunction 3 ellipticOperator
  regularity : EllipticRegularityPackage greenSFunction
  regularityEvidence : EllipticRegularityEvidence regularity
  potentialTheory : PotentialTheoryPackage greenSFunction
  potentialTheoryEvidence : PotentialTheoryEvidence potentialTheory
  boundaryProblems : BoundaryValueProblemsPackage greenSFunction
  boundaryProblemsEvidence : BoundaryValueProblemsEvidence boundaryProblems

def GreenSFunctionAnalyticFoundationClosed (F : GreenSFunctionAnalyticFoundation) : Prop :=
  GreenSFunctionClosed F.greenSFunction ∧
  EllipticRegularityClosed F.regularity ∧
  PotentialTheoryClosed F.potentialTheory ∧
  BoundaryValueProblemsClosed F.boundaryProblems

theorem green_s_function_analytic_foundation_closed_from_evidence
    (F : GreenSFunctionAnalyticFoundation) :
    GreenSFunctionAnalyticFoundationClosed F := by
  exact And.intro (green_s_function_closed_from_evidence F.greenSFunction)
    (And.intro (elliptic_regularity_closed_from_evidence F.regularity F.regularityEvidence)
      (And.intro (potential_theory_closed_from_evidence F.potentialTheory F.potentialTheoryEvidence)
        (boundary_value_problems_closed_from_evidence F.boundaryProblems F.boundaryProblemsEvidence)))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse