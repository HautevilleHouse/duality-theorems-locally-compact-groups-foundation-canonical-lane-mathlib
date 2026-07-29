import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : LocallyCompactGroup
  dual : DualGroup object
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (PontryaginDualityClosed (someDuality A.object A.dual)) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse