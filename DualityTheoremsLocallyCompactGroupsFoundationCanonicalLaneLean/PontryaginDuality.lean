import canonicalLaneMathlib.AdmissibleClass
import DuatlityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

structure PontryaginDualityPackage (G : LocallyCompactGroup) where
  characterGroup : LocallyCompactGroup
  dualityPairing : G.carrier → characterGroup.carrier → Circle
  pontryaginIsomorphism : Prop
  bidualIsomorphism : Prop

structure PontryaginDualityEvidence {G : LocallyCompactGroup} (P : PontryaginDualityPackage G) where
  pontryaginIsomorphismClosed : P.pontryaginIsomorphism
  bidualIsomorphismClosed : P.bidualIsomorphism

def PontryaginDualityClosed {G : LocallyCompactGroup} (P : PontryaginDualityPackage G) : Prop :=
  P.pontryaginIsomorphism ∧ P.bidualIsomorphism

theorem pontryagin_duality_closed_from_evidence {G : LocallyCompactGroup} (P : PontryaginDualityPackage G) (E : PontryaginDualityEvidence P) : PontryaginDualityClosed P := by
  exact And.intro E.pontryaginIsomorphismClosed E.bidualIsomorphismClosed

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse
