import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GreenSFunctionsEllipticEquationsCanonicalLaneLean.PotentialTheoryRegularity

namespace HautevilleHouse
namespace GreenSFunctionsEllipticEquationsCanonicalLaneLean

structure SchauderEstimatesPackage
    {G : GreenSourceFunctionPackage}
    (P : PotentialTheoryRegularityPackage G) where
  interiorEstimates : Prop
  boundaryEstimates : Prop
  globalEstimates : Prop
  coefficientsHolderCondition : Prop
  interiorEstimatesClosed : interiorEstimates
  boundaryEstimatesClosed : boundaryEstimates
  globalEstimatesClosed : globalEstimates
  coefficientsHolderConditionClosed : coefficientsHolderCondition

structure SchauderEstimatesEvidence
    {G : GreenSourceFunctionPackage}
    {P : PotentialTheoryRegularityPackage G}
    (S : SchauderEstimatesPackage P) where
  interiorEstimatesClosed : S.interiorEstimates
  boundaryEstimatesClosed : S.boundaryEstimates
  globalEstimatesClosed : S.globalEstimates
  coefficientsHolderConditionClosed : S.coefficientsHolderCondition

def SchauderEstimatesClosed
    {G : GreenSourceFunctionPackage}
    {P : PotentialTheoryRegularityPackage G}
    (S : SchauderEstimatesPackage P) : Prop :=
  S.interiorEstimates ∧ S.boundaryEstimates ∧
  S.globalEstimates ∧ S.coefficientsHolderCondition

theorem schauder_estimates_closed_from_evidence
    {G : GreenSourceFunctionPackage}
    {P : PotentialTheoryRegularityPackage G}
    (S : SchauderEstimatesPackage P)
    (E : SchauderEstimatesEvidence S) :
    SchauderEstimatesClosed S := by
  exact And.intro E.interiorEstimatesClosed
    (And.intro E.boundaryEstimatesClosed
      (And.intro E.globalEstimatesClosed E.coefficientsHolderConditionClosed))

end GreenSFunctionsEllipticEquationsCanonicalLaneLean
end HautevilleHouse