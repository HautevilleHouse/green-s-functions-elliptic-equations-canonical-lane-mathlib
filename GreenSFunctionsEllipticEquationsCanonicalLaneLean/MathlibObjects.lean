import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure GreenSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GreenAdmittedObject where
  space : GreenSpace
  smoothDomain : Prop
  ellipticOperator : Prop
  greenFunctionExists : Prop
  boundaryCondition : Prop
  conclusion : greenFunctionExists ∧ boundaryCondition

def GreenWitnessClosed (O : GreenAdmittedObject) : Prop :=
  O.conclusion

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse