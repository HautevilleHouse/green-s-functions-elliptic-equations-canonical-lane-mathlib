import GreenSFunctionsEllipticEquationsCanonicalLaneLean.RiemannianCurvature

/-!
# Elliptic Equation Domain Package
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure EllipticEquationPackage (G : RiemannianCurvaturePackage) where
  manifold : Type u
  laplaceOperator : Type v
  ellipticCondition : Prop
  boundedDomain : Prop
  smoothCoefficient : Prop

structure EllipticEquationEvidence {G : RiemannianCurvaturePackage} (E : EllipticEquationPackage G) where
  ellipticConditionClosed : E.ellipticCondition
  boundedDomainClosed : E.boundedDomain
  smoothCoefficientClosed : E.smoothCoefficient

def EllipticEquationClosed {G : RiemannianCurvaturePackage} (E : EllipticEquationPackage G) : Prop :=
  E.ellipticCondition ∧ E.boundedDomain ∧ E.smoothCoefficient

theorem elliptic_equation_closed_from_evidence {G : RiemannianCurvaturePackage} (E : EllipticEquationPackage G) (F : EllipticEquationEvidence E) : EllipticEquationClosed E := by
  exact And.intro F.ellipticConditionClosed (And.intro F.boundedDomainClosed F.smoothCoefficientClosed)

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
