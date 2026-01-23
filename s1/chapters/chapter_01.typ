#heading[Chapter 1: Deepfake Video Editing and Manipulation Techniques]

Video manipulation has transformed dramatically. What once required professional editors and weeks of work now happens in minutes through AI. The term "deepfake" originally described AI face swaps but has expanded to cover all neural network-based video manipulation. GANs dominated early work; diffusion models now produce even more convincing results with different artifact signatures @pei_deepfake_2024 @song_learning_2025.

== Types of Video Deepfakes

Face-centric deepfakes dominate research because faces carry identity—they determine who we trust and believe. Four main subcategories exist @pei_deepfake_2024:

*Face swapping* replaces one person's identity with another while preserving lighting, pose, and background. The boundary where synthetic meets authentic remains forensically significant. *Face reenactment* keeps identity constant but transfers motion—expressions, head movements, gaze—from a source video. Implementations use 3DMM models and latent feature decoupling. *Facial attribute editing* modifies age, makeup, or expression without changing identity. Subtler than swapping, harder to detect. *Face super-resolution* enhances low-quality imagery but can trigger false positives when enhancement textures mimic manipulation signatures.

Beyond faces, body animation techniques extend manipulation to posture and gesture @pei_deepfake_2024. An alternative taxonomy organizes forgery by scope: intra-frame (morphing, inpainting), inter-frame (insertion, deletion, shuffling), and spatiotemporal (combined) @ali_interframe_2025.

== Partial versus Full Video Synthesis

Partial manipulation modifies specific regions while leaving surroundings intact—face swapping being the prime example @pei_deepfake_2024. The boundary between synthetic and authentic content creates forensic opportunity through mismatched noise distributions, compression histories, and textures. Inpainting fills targeted regions with synthesized content, enabling evidence removal @zhou_deep_2021.

Full video synthesis generates everything artificially @song_learning_2025. Systems like Sora create content from text prompts alone. No authentic reference exists for comparison. Detection must identify generative properties rather than boundary discontinuities.

Temporal manipulation alters frame sequences without modifying individual frames @ali_interframe_2025. Deletion removes evidence; insertion adds fabricated events; reordering changes apparent causation. Each frame may pass authenticity tests while the sequence fails coherence analysis.

== Object Insertion, Removal, and Scene Alteration

Object manipulation enables evidence tampering. Inpainting removes specified elements—people, vehicles, documents—filling voids with plausible content @barglazan_image_2024 @zhou_deep_2021. Different approaches leave different artifacts: diffusion methods over-smooth, exemplar methods create repetitions, deep learning methods introduce checkerboard patterns.

Copy-move duplicates content internally; splicing integrates external material @ali_interframe_2025 @diwan_systematic_2024. Scene alteration modifies object properties—license plates, clothing colors, weapon appearances—while maintaining overall plausibility.

== Spatiotemporal Consistency Challenges

Video represents continuous observation of a 3D world through time. Spatial consistency requires perspective-appropriate proportions, realistic texture variation, and physically coherent lighting @chang_how_2025 @diwan_systematic_2024. Temporal consistency demands plausible motion trajectories, smooth evolution, and stable identity @pei_deepfake_2024.

Early methods processed frames independently, producing flickering and motion discontinuities. Temporal modeling improved quality substantially but artifacts persist @pei_deepfake_2024. The L3DE framework trains models to distinguish videos satisfying real-world constraints from those violating them @chang_how_2025.

Motion analysis through optical flow detects temporal anomalies—unnatural relative motion, impossible velocities, apparent movement in static regions @chang_how_2025 @ali_interframe_2025. Even advanced systems produce subtle inconsistencies: minute flickering, marginal physics violations. Generation improves continuously. Detection must keep pace.

= Chapter 1 Summary

Video deepfakes encompass far more than face swaps. The taxonomy includes identity replacement, motion transfer, attribute modification, and full scene generation—each with distinct technical characteristics and forensic implications. Face-centric manipulations dominate research attention because faces carry trust, but object manipulation and temporal tampering enable equally consequential evidence fabrication.

The distinction between partial and full synthesis reshapes detection strategy fundamentally. Partial manipulation—face swapping, inpainting, splicing—creates boundaries where synthetic meets authentic. These boundaries leak forensic information: mismatched noise, divergent compression histories, inconsistent textures. Full synthesis offers no such boundaries. Everything is generated. Detection must find properties intrinsic to the generation process rather than discontinuities with authentic surroundings.

Spatiotemporal consistency provides the common thread across manipulation types. Video depicts a 3D world evolving through time. That structure imposes constraints. Perspectives must be geometrically valid. Shadows must follow light sources. Motion must respect physics. Identity must remain stable. Manipulation that violates these constraints—however subtly—becomes detectable. The challenge lies in building systems capable of recognizing violations that human observers miss.
