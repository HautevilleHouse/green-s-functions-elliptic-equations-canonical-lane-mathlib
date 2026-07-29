import GreenSFunctionsEllipticEquationsCanonicalLaneLean.PotentialTheoryRegularity

/-!
# Boundary Value Problem Package
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure BoundaryValueProblemPackage {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} {P : PotentialTheoryRegularityPackage Gf} where
  dirichletProblem : Prop
  neumannProblem : Prop
  poissonRepresentation : Prop
  greensFunctionRepresentation : Prop

structure BoundaryValueProblemEvidence {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} {P : PotentialTheoryRegularityPackage Gf} (B : BoundaryValueProblemPackage P) where
  dirichletProblemClosed : B.dirichletProblem
  neumannProblemClosed : B.neumannProblem
  poissonRepresentationClosed : B.poissonRepresentation
  greensFunctionRepresentationClosed : B.greensFunctionRepresentation

def BoundaryValueProblemClosed {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} {P : PotentialTheoryRegularityPackage Gf} (B : BoundaryValueProblemPackage P) : Prop :=
  B.dirichletProblem ∧ B.neumannProblem ∧ B.poissonRepresentation ∧ B.greensFunctionRepresentation

theorem boundary_value_problem_closed_from_evidence {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} {P : PotentialTheoryRegularityPackage Gf} (B : BoundaryValueProblemPackage P) (C : BoundaryValueProblemEvidence B) : BoundaryValueProblemClosed B := by
  exact And.intro C.dirichletProblemClosed (And.intro C.neumannProblemClosed (And.intro C.poissonRepresentationClosed C.greensFunctionRepresentationClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
