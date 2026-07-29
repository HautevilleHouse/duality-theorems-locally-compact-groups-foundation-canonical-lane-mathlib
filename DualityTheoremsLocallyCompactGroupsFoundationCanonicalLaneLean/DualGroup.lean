import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

structure DualGroup (G : LocallyCompactGroup) where
  dualCarrier : Type u
  dualTopology : TopologicalSpace dualCarrier
  dualGroup : Group dualCarrier
  dualLocallyCompact : Prop
  characterMap : G.carrier → dualCarrier
  continuous : Prop
  groupHomomorphism : Prop

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse