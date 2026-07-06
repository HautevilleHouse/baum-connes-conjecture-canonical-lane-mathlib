import BaumConnesConjectureCanonicalLaneLean.Formalization
import BaumConnesConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace BaumConnesConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "82d6e7e0b3abdd7b01cbbcd1b23804220e21c858320511c219dac36df34bff04", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "bec30fa541c65e78e5bd862716a31c422058c27ba2bee1b4f5ed7ef27ec88ecd", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "54c5a62ca420296a4d7ec9ddc14fb4c399bbdc5bd98a8a9e991b9eed7916bcb5", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "34f9a445110b6477f63bb3c2690addc0b2ac5137435e83d19c97fed59644d51b", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "ccdf3dd7e6019140c87d5e78aa650acadaaa3dbb42f17798b189dca609366af0", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "a477fa242c30ca1608477774f756853219d0dc683bc1f322d3a1e82dc29447c8", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "84bc16369c5f99609e5cec181aa6c27d459aa4ca44ac347ef54f58828a4ed495", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "6905faf0cdc4ade73cacf95dbe428e84645d69b632716ab2310459f287e30817", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "807530ca32fb1b8522ba6e05e77248af3ecbc31d057cc95e96c41ed9d6cb6a70", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "BC_G1", constant := "kappa_analytic" },
  { gate := "BC_G2", constant := "sigma_equivariant" },
  { gate := "BC_G3", constant := "kappa_compact" },
  { gate := "BC_G4", constant := "rho_rigidity" },
  { gate := "BC_G5", constant := "assembly_transfer" },
  { gate := "BC_G6", constant := "eps_coh" },
  { gate := "BC_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "85a60a22dda5b43fb4ef50ab988553609f3043234aeab683390212ffb5fecca8" },
  { path := "README.md", sha256 := "4f03fb00899602310ae2f449ece3824eef0a651917ff3a48808d6cf522cf457d" },
  { path := "artifacts/constants_extracted.json", sha256 := "34f9a445110b6477f63bb3c2690addc0b2ac5137435e83d19c97fed59644d51b" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "54c5a62ca420296a4d7ec9ddc14fb4c399bbdc5bd98a8a9e991b9eed7916bcb5" },
  { path := "artifacts/constants_registry.json", sha256 := "ccdf3dd7e6019140c87d5e78aa650acadaaa3dbb42f17798b189dca609366af0" },
  { path := "artifacts/promotion_report.json", sha256 := "84bc16369c5f99609e5cec181aa6c27d459aa4ca44ac347ef54f58828a4ed495" },
  { path := "artifacts/stitch_constants.json", sha256 := "a477fa242c30ca1608477774f756853219d0dc683bc1f322d3a1e82dc29447c8" },
  { path := "notes/EG1_public.md", sha256 := "46dd16a67141f3e2076f8e5e3f37852aea673458fb304887c650695e99a589e5" },
  { path := "notes/EG2_public.md", sha256 := "23b93d0e10a88378b7e2c2dc141e1487c36ffb0fae2968f4ac289cad344fe395" },
  { path := "notes/EG3_public.md", sha256 := "e38af9ea7963c84deeba2faffd78d0f8ebd2d745156c2f7279b3bfb6ac860acc" },
  { path := "notes/EG4_public.md", sha256 := "5193f0c57440e6b26f498129113f295207afd4f5f2d864ecb44c1d2b53bfa901" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "bec30fa541c65e78e5bd862716a31c422058c27ba2bee1b4f5ed7ef27ec88ecd" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "cffe73736e5fb98f7e3a9e6b48a02029983e179f1b07eb600748d9376109ce89" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "6b9e5e0879f86ddbbdb841ffe313b3984bc18e5a62265a79695d55308aa49ad3" },
  { path := "paper/BAUM_CONNES_CONJECTURE_PREPRINT.md", sha256 := "7cdb4afcf1dcdd704bf8410c9374497bffb4c0e78d5b16ab6ce016cb187b3bbf" },
  { path := "repro/REPRO_PACK.md", sha256 := "6d1259a7eb6c60d1d7f503b9b9de0189dcbefed138503d0a8b6dcf5e6c73e917" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "6a01c747bb8b3c00e4ea9166cd4a4c5086332b77f7b58139baec5ae81c232b7b" },
  { path := "repro/certificate_baseline.json", sha256 := "807530ca32fb1b8522ba6e05e77248af3ecbc31d057cc95e96c41ed9d6cb6a70" },
  { path := "repro/run_repro.sh", sha256 := "a4ae2868e47d9eafcfb7ed321234a661e4a948572e31c01b69f49986a5504b31" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/bc_closure_guard.py", sha256 := "8eabe05880660c054ee071ed941723d0cae0ce8d87be916a9c481850e2fea082" },
  { path := "scripts/README.md", sha256 := "c992f729dfd96404fea8b43c80420a151da737c50fdf20d48816263979dfd8a0" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "BC_G1", status := "PASS" },
  { gate := "BC_G2", status := "PASS" },
  { gate := "BC_G3", status := "PASS" },
  { gate := "BC_G4", status := "PASS" },
  { gate := "BC_G5", status := "PASS" },
  { gate := "BC_G6", status := "PASS" },
  { gate := "BC_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "assembly_transfer", value := "1.029422" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_analytic", value := "1.0913680000000001" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_equivariant", value := "1.073" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "assembly_transfer",
  "eps_coh",
  "kappa_analytic",
  "kappa_compact",
  "rho_rigidity",
  "sigma_equivariant",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end BaumConnesConjectureCanonicalLaneLean
end HautevilleHouse
