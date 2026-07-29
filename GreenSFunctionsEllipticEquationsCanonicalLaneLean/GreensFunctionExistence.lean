import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure GreensExistencePackage (Ω : Type) [OpenSet Ω] where
  domainRegularity : Prop
  operatorUniformlyElliptic : Prop
  fundamentalSolutionConstructed : Prop
  boundaryRegularity : Prop
  existenceProof : fundamentalSolutionConstructed ∧ boundaryRegularity

structure GreensExistenceEvidence {Ω : Type} [OpenSet Ω] (G : GreensExistencePackage Ω) where
  domainRegularityClosed : G.domainRegularity
  operatorUniformlyEllipticClosed : G.operatorUniformlyElliptic
  fundamentalSolutionConstructedClosed : G.fundamentalSolutionConstructed
  boundaryRegularityClosed : G.boundaryRegularity

def GreensExistenceClosed {Ω : Type} [OpenSet Ω] (G : GreensExistencePackage Ω) : Prop :=
  G.domainRegularity ∧ G.operatorUniformlyElliptic ∧ G.fundamentalSolutionConstructed ∧ G.boundaryRegularity

theorem greens_existence_closed_from_evidence {Ω : Type} [OpenSet Ω] (G : GreensExistencePackage Ω) (E : GreensExistenceEvidence G) : GreensExistenceClosed G := by
  exact And.intro E.domainRegularityClosed (And.intro E.operatorUniformlyEllipticClosed (And.intro E.fundamentalSolutionConstructedClosed E.boundaryRegularityClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
