import canonicalLaneMathlib.AdmissibleClass

/-!
# Green Function Construction Package
-/

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure GreenFunctionConstructionPackage where
  fundamentalSolutionExists : Prop
  boundaryCorrection : Prop
  symmetryProperty : Prop
  integralRepresentation : Prop
  singularityStructure : Prop

structure GreenFunctionConstructionEvidence (G : GreenFunctionConstructionPackage) where
  fundamentalSolutionExistsClosed : G.fundamentalSolutionExists
  boundaryCorrectionClosed : G.boundaryCorrection
  symmetryPropertyClosed : G.symmetryProperty
  integralRepresentationClosed : G.integralRepresentation
  singularityStructureClosed : G.singularityStructure

def GreenFunctionConstructionClosed (G : GreenFunctionConstructionPackage) : Prop :=
  G.fundamentalSolutionExists ∧ G.boundaryCorrection ∧
  G.symmetryProperty ∧ G.integralRepresentation ∧ G.singularityStructure

theorem green_function_construction_closed_from_evidence
    (G : GreenFunctionConstructionPackage) (Ev : GreenFunctionConstructionEvidence G) :
    GreenFunctionConstructionClosed G :=
  And.intro Ev.fundamentalSolutionExistsClosed
    (And.intro Ev.boundaryCorrectionClosed
      (And.intro Ev.symmetryPropertyClosed
        (And.intro Ev.integralRepresentationClosed Ev.singularityStructureClosed)))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse