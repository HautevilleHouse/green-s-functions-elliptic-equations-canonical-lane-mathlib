import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure BoundaryValuePackage (Ω : Type) [OpenSet Ω] where
  dirichletProblem : Prop
  neumannProblem : Prop
  mixedBoundaryConditions : Prop
  selfAdjointness : Prop
  bvpProof : dirichletProblem ∧ neumannProblem ∧ mixedBoundaryConditions ∧ selfAdjointness

structure BoundaryValueEvidence {Ω : Type} [OpenSet Ω] (B : BoundaryValuePackage Ω) where
  dirichletProblemClosed : B.dirichletProblem
  neumannProblemClosed : B.neumannProblem
  mixedBoundaryConditionsClosed : B.mixedBoundaryConditions
  selfAdjointnessClosed : B.selfAdjointness

def BoundaryValueClosed {Ω : Type} [OpenSet Ω] (B : BoundaryValuePackage Ω) : Prop :=
  B.dirichletProblem ∧ B.neumannProblem ∧ B.mixedBoundaryConditions ∧ B.selfAdjointness

theorem boundary_value_closed_from_evidence {Ω : Type} [OpenSet Ω] (B : BoundaryValuePackage Ω) (E : BoundaryValueEvidence B) : BoundaryValueClosed B := by
  exact And.intro E.dirichletProblemClosed (And.intro E.neumannProblemClosed (And.intro E.mixedBoundaryConditionsClosed E.selfAdjointnessClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
