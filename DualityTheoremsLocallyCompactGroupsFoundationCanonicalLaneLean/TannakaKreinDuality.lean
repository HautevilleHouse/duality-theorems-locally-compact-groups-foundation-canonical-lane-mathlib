import canonicalLaneMathlib.AdmissibleClass
import DuatlityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

structure TannakaKreinDualityPackage (G : LocallyCompactGroup) where
  representationCategory : Type u
  fiberFunctor : representationCategory → VectorSpace ℝ
  tannakaKreinIsomorphism : Prop

structure TannakaKreinDualityEvidence {G : LocallyCompactGroup} (T : TannakaKreinDualityPackage G) where
  tannakaKreinIsomorphismClosed : T.tannakaKreinIsomorphism

def TannakaKreinDualityClosed {G : LocallyCompactGroup} (T : TannakaKreinDualityPackage G) : Prop :=
  T.tannakaKreinIsomorphism

theorem tannaka_krein_duality_closed_from_evidence {G : LocallyCompactGroup} (T : TannakaKreinDualityPackage G) (E : TannakaKreinDualityEvidence T) : TannakaKreinDualityClosed T := by
  exact E.tannakaKreinIsomorphismClosed

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse
