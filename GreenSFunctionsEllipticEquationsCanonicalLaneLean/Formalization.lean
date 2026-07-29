import GreenSFunctionsEllipticEquationsCanonicalLaneLean.SourcePackage
import GreenSFunctionsEllipticEquationsCanonicalLaneLean.SourceDependencies

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
  deriving Repr, DecidableEq

def sourceRepository : String := "green-functions-elliptic-equations-canonical-lane"
def sourceDescription : String := "Green's Functions for Elliptic Equations"
structure SourceTheoremBoundary where
  claimBoundary : String

def sourceTheoremBoundary : SourceTheoremBoundary := {
  claimBoundary := "Green's function exists for elliptic operator on bounded domain"
}

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := sourceRepository
  sourceCheckoutHead := "main"
  packageLayerTranslated := true
  sourceHashesRecorded := true
  theoremBoundaryOpen := true
  sourceConjectureClosureClaimed := false
  leanBuildChecked := true
}

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
