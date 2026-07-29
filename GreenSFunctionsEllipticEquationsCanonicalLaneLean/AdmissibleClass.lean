import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure AdmissibleClass where
  object : GreenAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GreenWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse