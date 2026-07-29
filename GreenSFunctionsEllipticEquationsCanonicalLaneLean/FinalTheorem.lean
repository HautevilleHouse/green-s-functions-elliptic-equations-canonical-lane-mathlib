import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

def ConstrainedGreenClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_green_endgame (A : AdmissibleClass) :
    ConstrainedGreenClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse