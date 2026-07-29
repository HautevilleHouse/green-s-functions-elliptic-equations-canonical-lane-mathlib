import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GreenWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse