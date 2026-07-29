import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GreenSFunctionsEllipticEquationsCanonicalLaneLean.GreenSourceFunction

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure SpectralDecompositionPackage
    (G : GreenSourceFunctionPackage) where
  eigenfunctionSystem : Type u
  eigenvalueSequence : Type v
  spectralRepresentation : Type w
  completenessOfEigenfunctions : Prop
  positivityOfGreenKernel : Prop
  meromorphicContinuation : Prop
  eigenfunctionSystemConstructed : Prop
  eigenvalueSequenceConstructed : Prop
  spectralRepresentationConstructed : Prop
  completenessOfEigenfunctionsClosed : completenessOfEigenfunctions
  positivityOfGreenKernelClosed : positivityOfGreenKernel
  meromorphicContinuationClosed : meromorphicContinuation

structure SpectralDecompositionEvidence
    {G : GreenSourceFunctionPackage}
    (S : SpectralDecompositionPackage G) where
  eigenfunctionSystemConstructedClosed : S.eigenfunctionSystemConstructed
  eigenvalueSequenceConstructedClosed : S.eigenvalueSequenceConstructed
  spectralRepresentationConstructedClosed : S.spectralRepresentationConstructed
  completenessOfEigenfunctionsClosed : S.completenessOfEigenfunctions
  positivityOfGreenKernelClosed : S.positivityOfGreenKernel
  meromorphicContinuationClosed : S.meromorphicContinuation

def SpectralDecompositionClosed
    {G : GreenSourceFunctionPackage}
    (S : SpectralDecompositionPackage G) : Prop :=
  S.eigenfunctionSystemConstructed ∧ S.eigenvalueSequenceConstructed ∧
  S.spectralRepresentationConstructed ∧ S.completenessOfEigenfunctions ∧
  S.positivityOfGreenKernel ∧ S.meromorphicContinuation

theorem spectral_decomposition_closed_from_evidence
    {G : GreenSourceFunctionPackage}
    (S : SpectralDecompositionPackage G)
    (E : SpectralDecompositionEvidence S) :
    SpectralDecompositionClosed S := by
  exact And.intro E.eigenfunctionSystemConstructedClosed
    (And.intro E.eigenvalueSequenceConstructedClosed
      (And.intro E.spectralRepresentationConstructedClosed
        (And.intro E.completenessOfEigenfunctionsClosed
          (And.intro E.positivityOfGreenKernelClosed
            E.meromorphicContinuationClosed))))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse