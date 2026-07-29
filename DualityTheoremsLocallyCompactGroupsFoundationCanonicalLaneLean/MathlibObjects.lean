import Mathlib.Topology.Basic
import Mathlib.GroupTheory.Subgroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

structure DualitySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  group : Group carrier
  locallyCompact : Prop
  hausdorff : Prop

structure DualityAdmittedObject where
  space : DualitySpace
  isLocallyCompact : Prop
  isHausdorff : Prop
  dualSpace : Type
  dualTopology : TopologicalSpace dualSpace
  pontryaginDualityHolds : Prop
  conclusion : pontryaginDualityHolds

def DualityWitnessClosed (O : DualityAdmittedObject) : Prop :=
  O.pontryaginDualityHolds

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse