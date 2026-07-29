import GreenSFunctionsEllipticEquationsCanonicalLaneLean.Formalization
import GreenSFunctionsEllipticEquationsCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
  deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
  deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
  deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
  deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
  deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
  deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "dd2f871cd9d57f8aae5bcca4e79ba759e61da175a03181be56415c9881036413", present := true }]

def reviewerChainSteps : List ReviewerChainStep :=
  [{ index := 1, label := "EG1" }]

def reviewerClosureGates : List ReviewerClosureGate :=
  [{ gate := "GS_G1", constant := "elliptic_coercivity" }]

def reviewerFalsificationConditionCount : Nat := 3

def reviewerManifestEntries : List ReviewerManifestEntry :=
  [{ path := "CITATION.cff", sha256 := "" }]

def baselineCertificateGates : List CertificateGate :=
  [{ gate := "GS_G1", status := "PASS" }]

def baselineCertificateInputs : List CertificateInput :=
  [{ key := "elliptic_coercivity", value := "1.0" }]

def bridgeConstantKeys : List String :=
  ["elliptic_coercivity"]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
