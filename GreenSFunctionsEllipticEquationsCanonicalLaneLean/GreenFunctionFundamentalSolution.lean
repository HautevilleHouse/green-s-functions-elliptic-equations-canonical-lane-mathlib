import GreenSFunctionsEllipticEquationsCanonicalLaneLean.EllipticEquationDomain

/-!
# Green Function Fundamental Solution Package
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure GreenFunctionFundamentalSolutionPackage {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} where
  fundamentalSolution : Type v
  singularityCondition : Prop
  boundaryAdjustment : Prop
  greensIdentity : Prop

structure GreenFunctionFundamentalSolutionEvidence {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} (Gf : GreenFunctionFundamentalSolutionPackage E) where
  singularityConditionClosed : Gf.singularityCondition
  boundaryAdjustmentClosed : Gf.boundaryAdjustment
  greensIdentityClosed : Gf.greensIdentity

def GreenFunctionFundamentalSolutionClosed {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} (Gf : GreenFunctionFundamentalSolutionPackage E) : Prop :=
  Gf.singularityCondition ∧ Gf.boundaryAdjustment ∧ Gf.greensIdentity

theorem green_function_fundamental_solution_closed_from_evidence {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} (Gf : GreenFunctionFundamentalSolutionPackage E) (F : GreenFunctionFundamentalSolutionEvidence Gf) : GreenFunctionFundamentalSolutionClosed Gf := by
  exact And.intro F.singularityConditionClosed (And.intro F.boundaryAdjustmentClosed F.greensIdentityClosed)

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
