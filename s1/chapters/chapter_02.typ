#heading[Chapter 2: Forensic Features and Detection Signals]

Manipulation leaves traces. The forensic challenge lies in identifying which traces reliably indicate tampering versus natural video characteristics. Detection signals span multiple domains: spatial artifacts within frames, temporal inconsistencies across sequences, frequency-domain signatures, physical constraint violations, and coherence failures.

== Spatial Artifacts in Manipulated Frames

Blending boundaries appear where manipulated regions meet authentic content @pei_deepfake_2024. Face swapping creates perimeter artifacts despite feathering and color harmonization. Subtle color shifts, texture discontinuities, and geometric misalignments persist at fusion boundaries.

Noise distribution anomalies provide powerful indicators @pei_deepfake_2024 @ali_interframe_2025. Camera sensors produce characteristic noise patterns throughout authentic footage. Manipulation disrupts local noise statistics. Sensor Pattern Noise (SPN) and Color Filter Array (CFA) artifacts offer device-specific signatures that forgeries disturb.

Compression artifacts reveal tampering when DCT coefficient distributions shift unexpectedly @diwan_systematic_2024 @nguyen_videofact_2024. Block-level inconsistencies appear at macroblock edges. Error Level Analysis (ELA) visualizes compression behavior differences between manipulated and authentic regions @zhou_deep_2021.

GANs produce checkerboard patterns from transpose convolutions; diffusion models leave different signatures @barglazan_image_2024 @pei_deepfake_2024. Unrealistic coloring, over-saturation, and geometric deformations characterize AI-generated content @chang_how_2025 @song_learning_2025.

== Temporal Inconsistencies Across Frames

Inter-frame tampering—insertion, deletion, shuffling—disrupts natural temporal dependencies @diwan_systematic_2024 @ali_interframe_2025. Motion vector anomalies manifest as sudden position jumps, impossible velocity changes, or reversed direction without cause. Optical flow analysis quantifies these discontinuities.

Jitter and flickering characterize frame-by-frame manipulation @pei_deepfake_2024 @zhou_deep_2021. Independent processing produces slight inter-frame variations that accumulate into visible oscillations. Frame discontinuity appears when adjacent frames differ more than physical evolution permits.

Static scenes pose detection challenges @ali_interframe_2025. With minimal motion, frame manipulation leaves few visible traces. Detection must rely on noise evolution, compression progression, or sensor-level temporal signatures.

ConvLSTM architectures accumulate evidence across frames, identifying regions behaving inconsistently over time @zhou_deep_2021. Cross-frame attention mechanisms relate information across temporal distance @song_learning_2025.

== Frequency-Domain and Compression Traces

DCT analysis reveals manipulation through coefficient distribution changes @barglazan_image_2024 @diwan_systematic_2024 @ali_interframe_2025. Double compression produces statistical patterns distinct from single-pass encoding. Quantization errors create periodic traces when compression parameters differ between original and re-encoded content @zhou_deep_2021.

High-frequency anomalies from GAN upsampling appear as spectral peaks at frequencies corresponding to upsampling factors @pei_deepfake_2024 @song_learning_2025. Constrained convolutional layers with high-pass filters extract these forensic traces while suppressing irrelevant semantic content @nguyen_videofact_2024.

H.264 bitstream analysis examines encoding parameters and motion vectors without full decoding @diwan_systematic_2024. Inconsistent quantization settings or anomalous motion prediction patterns indicate potential tampering.

== Physical Inconsistencies: Motion, Lighting, and Shadows

Lighting direction must follow consistent physical principles within authentic footage @barglazan_image_2024 @pei_deepfake_2024 @chang_how_2025. Manipulated content may exhibit shadows pointing different directions, mismatched reflections, or contradictory brightness gradients. Shadow consistency provides strong forensic evidence—shadows follow strict geometric relationships with light sources.

Motion must respect physics @chang_how_2025 @ali_interframe_2025. AI-generated video produces impossible trajectories, velocity changes without force, movements exceeding physical limits. Physics violations extend to interactions: unnatural fluid behavior, objects passing through surfaces, collisions without momentum transfer.

Biological signals constrain face manipulation @pei_deepfake_2024. Blinking follows characteristic frequency patterns. Gaze direction must follow possible eye movements. Head pose must respect anatomical limits. Mouth movements must match speech physics.

== Cross-Frame Coherence and Identity Preservation

Identity stability matters for face manipulation @pei_deepfake_2024 @song_learning_2025. Authentic video maintains consistent facial identity with natural variations in expression, pose, and lighting. Imperfect manipulation produces drift—gradual appearance shifts—or instability—flickering features.

Object permanence characterizes authentic video @chang_how_2025 @song_learning_2025. Objects enter frames, move consistently, exit appropriately. Generated video may violate permanence through spontaneous appearance, disappearance, or inconsistent transformation.

Style and feature consistency reveal manipulation when synthesis fails to maintain uniform visual characteristics @pei_deepfake_2024. Mismatched color palettes, inconsistent noise, varying detail levels indicate regions of different origin. Decoupling identity from manipulation artifacts improves detection generalization @diwan_systematic_2024.

#heading(numbering: none)[#h(0.5em)Chapter 2 Summary]

Forensic analysis draws from multiple signal domains, each revealing different manipulation traces. Spatial artifacts—blending boundaries, noise anomalies, compression inconsistencies—expose tampering within individual frames. GANs leave checkerboard patterns; diffusion models produce distinct signatures. Temporal analysis catches what spatial examination misses: the jitter of frame-by-frame processing, motion vector discontinuities from inserted or deleted frames, flickering that betrays independent rather than coherent generation.

Frequency-domain forensics operates where human vision fails. DCT coefficient distributions shift after manipulation and recompression. GAN upsampling creates spectral peaks invisible to casual inspection but obvious under Fourier analysis. Physical constraint violations offer another avenue entirely—shadows pointing wrong directions, impossible trajectories, biological signals that don't match human physiology.

No single signal type suffices. Sophisticated manipulation may satisfy spatial constraints while violating temporal ones. Compression may obscure frequency signatures while preserving physical inconsistencies. Robust detection requires integration across domains, combining complementary evidence to catch what any single approach would miss.
