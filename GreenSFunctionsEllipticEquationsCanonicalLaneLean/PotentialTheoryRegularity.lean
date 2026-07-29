import GreenSFunctionsEllipticEquationsCanonicalLaneLean.GreenFunctionFundamentalSolution

/-!
# Potential Theory Regularity Package
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure PotentialTheoryRegularityPackage {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} where
  holderContinuity : Prop
  maximumPrinciple : Prop
  schauderEstimate : Prop
  solutionRegularity : Prop

structure PotentialTheoryRegularityEvidence {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} (P : PotentialTheoryRegularityPackage Gf) where
  holderContinuityClosed : P.holderContinuity
  maximumPrincipleClosed : P.maximumPrinciple
  schauderEstimateClosed : P.schauderEstimate
  solutionRegularityClosed : P.solutionRegularity

def PotentialTheoryRegularityClosed {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} (P : PotentialTheoryRegularityPackage Gf) : Prop :=
  P.holderContinuity ∧ P.maximumPrinciple ∧ P.schauderEstimate ∧ P.solutionRegularity

theorem potential_theory_regularity_closed_from_evidence {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} (P : PotentialTheoryRegularityPackage Gf) (Q : PotentialTheoryRegularityEvidence P) : PotentialTheoryRegularityClosed P := by
  exact And.intro Q.holderContinuityClosed (And.intro Q.maximumPrincipleClosed (And.intro Q.schauderEstimateClosed Q.solutionRegularityClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
