/-!
# baum-connes-conjecture-canonical-lane Lean migration boundary

This module records the source repository boundary and canonical-lane data
structures for the Lean migration. The source package translation lives in
`BaumConnesConjectureCanonicalLaneLean/SourcePackage.lean`.

This module records the source boundary and carries unrestricted source theorem
closure as an explicit remainder.
-/

namespace HautevilleHouse
namespace BaumConnesConjectureCanonicalLaneLean

def sourceRepository : String := "baum-connes-conjecture-canonical-lane"
def sourceUrl : String := "https://github.com/HautevilleHouse/baum-connes-conjecture-canonical-lane"
def sourceDescription : String := "Canonical-lane closure package for the Baum-Connes conjecture: admissible-class formulation, projection gates, local-to-global bridge, and carried remainder."
def sourceClassification : String := "abstract_math_theorem_repo"
def sourceTopics : List String := ["geometric-group-theory", "mathematical-proof", "noncommutative-geometry", "reproducibility", "assembly-map", "baum-connes-conjecture", "operator-k-theory", "canonical-lane", "local-to-global", "manifold-constrained"]

structure AdmissibleObject where
  sourceKey : String
  route : String
deriving Repr, DecidableEq

structure LocalCertificate where
  object : AdmissibleObject
  gate : String
  evidence : String
deriving Repr, DecidableEq

structure CarriedRemainder where
  label : String
  reason : String
deriving Repr, DecidableEq

structure SourceTheoremBoundary where
  sourceKey : String
  sourceTheoremName : String
  claimBoundary : String
  encodedLeanBoundary : String
  sourceEvidenceRoute : String
  classicalRemainder : String
  closureAuthority : String
  formalizationStatus : String
deriving Repr, DecidableEq

def sourceTheoremBoundary : SourceTheoremBoundary := {
  sourceKey := sourceRepository,
  sourceTheoremName := "Baum-Connes Conjecture",
  claimBoundary := "The encoded Lean target records the Baum-Connes assembly map and K-theoretic isomorphism boundary from the source package; unrestricted source theorem closure remains carried outside this Lean target",
  encodedLeanBoundary := "Lean target checks source package data, theorem statement ledger, baseline gates, Mathlib-native closure layer, and carried-remainder flags for Baum-Connes Conjecture",
  sourceEvidenceRoute := "source package constants, source formula models, reviewer bridge, baseline certificate gates, and Mathlib-native closure layer",
  classicalRemainder := "Unrestricted Baum-Connes assembly map and K-theoretic isomorphism theorem closure remains a source-boundary remainder beyond this Lean target",
  closureAuthority := "lake build authority is limited to the encoded Lean library target and boundary ledger",
  formalizationStatus := "SOURCE_DERIVED_FORMALIZATION_LAYER"
}

def canonicalLaneBoundary : String :=
  "Use the source package translation, theorem-specific boundary ledger, and Mathlib-native closure layer as the encoded target; unrestricted source theorem closure remains carried."

end BaumConnesConjectureCanonicalLaneLean
end HautevilleHouse
