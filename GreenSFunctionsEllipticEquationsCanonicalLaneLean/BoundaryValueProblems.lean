import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GreenSFunctionsEllipticEquationsCanonicalLaneLean.GreenSFunctions

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure BoundaryValueProblemsPackage {n : Nat} {L : EllipticOperator n} (G : GreenSFunction n L) where
  dirichletExistence : Prop
  neumannExistence : Prop
  mixedBCExistence : Prop
  spectralRepresentation : Prop

structure BoundaryValueProblemsEvidence {n : Nat} {L : EllipticOperator n} {G : GreenSFunction n L}
    (B : BoundaryValueProblemsPackage G) where
  dirichletExistenceClosed : B.dirichletExistence
  neumannExistenceClosed : B.neumannExistence
  mixedBCExistenceClosed : B.mixedBCExistence
  spectralRepresentationClosed : B.spectralRepresentation

def BoundaryValueProblemsClosed {n : Nat} {L : EllipticOperator n} {G : GreenSFunction n L}
    (B : BoundaryValueProblemsPackage G) : Prop :=
  B.dirichletExistence ∧ B.neumannExistence ∧ B.mixedBCExistence ∧ B.spectralRepresentation

theorem boundary_value_problems_closed_from_evidence
    {n : Nat} {L : EllipticOperator n} {G : GreenSFunction n L}
    (B : BoundaryValueProblemsPackage G) (E : BoundaryValueProblemsEvidence B) :
    BoundaryValueProblemsClosed B := by
  exact And.intro E.dirichletExistenceClosed
    (And.intro E.neumannExistenceClosed
      (And.intro E.mixedBCExistenceClosed E.spectralRepresentationClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse