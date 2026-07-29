import GreenSFunctionsEllipticEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def greenProjection : Projection GreenEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem green_projection_idempotent (x : GreenEndgameState) :
    greenProjection.toFun (greenProjection.toFun x) = greenProjection.toFun x := by
  exact greenProjection.idempotent x

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse
