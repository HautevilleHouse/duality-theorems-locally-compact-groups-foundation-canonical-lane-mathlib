import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

structure LocallyCompactGroup where
  carrier : Type u
  groupStructure : Group carrier
  topology : TopologicalSpace carrier
  locallyCompact : Prop
  hausdorff : Prop
  topologicalGroup : TopologicalGroup carrier

def LocallyCompactGroupClosed (G : LocallyCompactGroup) : Prop :=
  G.locallyCompact ∧ G.hausdorff

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse
