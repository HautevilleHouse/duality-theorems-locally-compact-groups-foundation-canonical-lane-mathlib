import canonicalLaneMathlib.AdmissibleClass
import DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualityEndgameState where
  object : DualityAdmittedObject

def dualityProjection : Projection DualityEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem duality_projection_idempotent (x : DualityEndgameState) :
    dualityProjection.toFun (dualityProjection.toFun x) = dualityProjection.toFun x := by
  exact dualityProjection.idempotent x

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse