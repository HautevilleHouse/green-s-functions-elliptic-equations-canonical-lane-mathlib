import GreenSFunctionsEllipticEquationsCanonicalLaneLean.BoundaryValueProblem

/-!
# Spectral Theory of Elliptic Operators Package
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure SpectralTheoryEllipticPackage {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} {P : PotentialTheoryRegularityPackage Gf} {B : BoundaryValueProblemPackage P} where
  compactResolvent : Prop
  eigenfunctionExpansion : Prop
  spectrumDiscreteness : Prop
  meromorphicContinuation : Prop

structure SpectralTheoryEllipticEvidence {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} {P : PotentialTheoryRegularityPackage Gf} {B : BoundaryValueProblemPackage P} (S : SpectralTheoryEllipticPackage B) where
  compactResolventClosed : S.compactResolvent
  eigenfunctionExpansionClosed : S.eigenfunctionExpansion
  spectrumDiscretenessClosed : S.spectrumDiscreteness
  meromorphicContinuationClosed : S.meromorphicContinuation

def SpectralTheoryEllipticClosed {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} {P : PotentialTheoryRegularityPackage Gf} {B : BoundaryValueProblemPackage P} (S : SpectralTheoryEllipticPackage B) : Prop :=
  S.compactResolvent ∧ S.eigenfunctionExpansion ∧ S.spectrumDiscreteness ∧ S.meromorphicContinuation

theorem spectral_theory_elliptic_closed_from_evidence {G : RiemannianCurvaturePackage} {E : EllipticEquationPackage G} {Gf : GreenFunctionFundamentalSolutionPackage E} {P : PotentialTheoryRegularityPackage Gf} {B : BoundaryValueProblemPackage P} (S : SpectralTheoryEllipticPackage B) (T : SpectralTheoryEllipticEvidence S) : SpectralTheoryEllipticClosed S := by
  exact And.intro T.compactResolventClosed (And.intro T.eigenfunctionExpansionClosed (And.intro T.spectrumDiscretenessClosed T.meromorphicContinuationClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
