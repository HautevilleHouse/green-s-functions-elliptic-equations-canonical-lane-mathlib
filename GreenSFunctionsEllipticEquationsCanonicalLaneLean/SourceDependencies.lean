import GreenSFunctionsEllipticEquationsCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
  deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
  deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  []

def sourceRuntimeModules : List String :=
  []

def sourcePathDependencies : List SourcePathDependency :=
  []

def sourceImportDependencyCount : Nat := 0

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
