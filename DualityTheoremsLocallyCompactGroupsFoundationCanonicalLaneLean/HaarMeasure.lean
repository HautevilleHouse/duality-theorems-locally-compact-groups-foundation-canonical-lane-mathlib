import canonicalLaneMathlib.AdmissibleClass
import DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean.LocallyCompactGroup

namespace HautevilleHouse
namespace DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean

structure HaarMeasure (G : LocallyCompactGroup) where
  measure : Set G → ℝ≥0∞
  leftInvariant : ∀ g : G, ∀ s : Set G, measure (g • s) = measure s
  regularity : Prop
  positivityOnNonemptyOpen : Prop

structure HaarMeasureEvidence {G : LocallyCompactGroup} (μ : HaarMeasure G) where
  leftInvariantClosed : μ.leftInvariant
  regularityClosed : μ.regularity
  positivityOnNonemptyOpenClosed : μ.positivityOnNonemptyOpen

def HaarMeasureClosed {G : LocallyCompactGroup} (μ : HaarMeasure G) : Prop :=
  μ.leftInvariant ∧ μ.regularity ∧ μ.positivityOnNonemptyOpen

theorem haar_measure_closed_from_evidence {G : LocallyCompactGroup} (μ : HaarMeasure G)
    (E : HaarMeasureEvidence μ) : HaarMeasureClosed μ := by
  exact And.intro E.leftInvariantClosed (And.intro E.regularityClosed E.positivityOnNonemptyOpenClosed)

end DualityTheoremsLocallyCompactGroupsFoundationCanonicalLaneLean
end HautevilleHouse