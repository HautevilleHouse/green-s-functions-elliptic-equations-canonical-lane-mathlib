import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure GreenSourceFunctionPackage where
  domain : Type u
  topology : TopologicalSpace domain
  ellipticOperator : Type v
  fundamentalSolution : Type w
  greenFunction : Type x
  regularPart : Type y
  sourceTerm : Type z
  domainSmoothBounded : Prop
  operatorUniformlyElliptic : Prop
  fundamentalSolutionExists : Prop
  greenFunctionConstructed : Prop
  regularPartSmooth : Prop
  sourceTermCompatible : Prop

structure GreenSourceFunctionEvidence (G : GreenSourceFunctionPackage) where
  domainSmoothBoundedClosed : G.domainSmoothBounded
  operatorUniformlyEllipticClosed : G.operatorUniformlyElliptic
  fundamentalSolutionExistsClosed : G.fundamentalSolutionExists
  greenFunctionConstructedClosed : G.greenFunctionConstructed
  regularPartSmoothClosed : G.regularPartSmooth
  sourceTermCompatibleClosed : G.sourceTermCompatible

def GreenSourceFunctionClosed (G : GreenSourceFunctionPackage) : Prop :=
  G.domainSmoothBounded ∧ G.operatorUniformlyElliptic ∧
  G.fundamentalSolutionExists ∧ G.greenFunctionConstructed ∧
  G.regularPartSmooth ∧ G.sourceTermCompatible

theorem green_source_function_closed_from_evidence (G : GreenSourceFunctionPackage)
    (E : GreenSourceFunctionEvidence G) : GreenSourceFunctionClosed G := by
  exact And.intro E.domainSmoothBoundedClosed
    (And.intro E.operatorUniformlyEllipticClosed
      (And.intro E.fundamentalSolutionExistsClosed
        (And.intro E.greenFunctionConstructedClosed
          (And.intro E.regularPartSmoothClosed E.sourceTermCompatibleClosed))))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse