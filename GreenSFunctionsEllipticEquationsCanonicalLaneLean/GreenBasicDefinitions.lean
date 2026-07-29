import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure GreenFunctionSpace where
  domain : Type u
  boundary : Type v
  measure : Type w
  sobolevSpace : Type x
  ellipticOperator : Type y
  isGreenFunction : Prop

structure EllipticOperatorData where
  principalSymbol : Type u
  lowerOrderTerms : Type v
  uniformEllipticity : Prop
  boundedCoefficients : Prop

structure GreenAdmittedObject where
  space : GreenFunctionSpace
  operatorData : EllipticOperatorData
  fundamentalSolutionExists : Prop
  boundaryRegularity : Prop
  conclusion : Prop

def GreenWitnessClosed (O : GreenAdmittedObject) : Prop :=
  O.conclusion

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse