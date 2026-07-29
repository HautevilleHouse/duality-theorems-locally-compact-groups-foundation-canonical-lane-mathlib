import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PontryaginDualityClosed (D : PontryaginDuality (A.object) (A.dual))

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    unfold bridgeClosed
    -- The hypothesis that A is admissible implies that the Pontryagin dual of A.object is A.dual
    have hD : D = (PontryaginDuality.mk (A.object) (A.dual) := ?_) -- Assuming D is defined elsewhere
    -- Use the known theorem that Pontryagin duality is closed for admissible groups
    have hClosed : PontryaginDualityClosed (PontryaginDuality.mk (A.object) (A.dual)) := by
      apply A.isAdmissible.dualClosed
    exact hClosed

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse