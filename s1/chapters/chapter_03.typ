#heading[Chapter 3: Machine Learning Approaches for Detection]

Machine learning translates forensic knowledge into automated detection. The field has evolved from frame-level CNN analysis through temporal sequence modeling to integrated spatiotemporal architectures. Throughout this progression, generalization remains the central challenge—models that excel on training data often fail on novel manipulations.

== CNN-Based Frame Analysis

CNNs provide foundational feature extraction for deepfake detection @pei_deepfake_2024. The same architectural elements enabling GANs to synthesize faces—convolutional layers, encoder-decoder structures—can identify synthesis artifacts. VGG, ResNet, and Xception architectures adapted from image classification serve as detection backbones @ali_interframe_2025 @zhou_deep_2021 @diwan_systematic_2024.

Constrained convolutional layers focus attention on forensic traces rather than semantic content @nguyen_videofact_2024. High-pass filter initialization emphasizes high-frequency components where manipulation artifacts often reside. Dual-stream architectures combine forensic noise analysis with visual context processing—one stream extracts noise patterns and compression artifacts, another processes scene content and lighting.

CNNs enable manipulation localization through probability masks indicating where forgery occurred @nguyen_videofact_2024. Perceptual similarity metrics (LPIPS) and identity embeddings (ArcFace) provide supporting measurements @melnik_face_2024.

Frame-by-frame analysis has fundamental limitations @ma_your_2026. Processing frames independently discards temporal information. Manipulation maintaining frame-level plausibility while violating temporal coherence evades single-frame detection. Performance depends heavily on training-test distribution match.

== Temporal Models: RNNs, LSTMs, and Transformers

Recurrent networks process video as sequences, maintaining hidden states carrying information across frames @diwan_systematic_2024 @ali_interframe_2025. Bidirectional LSTMs incorporate context from both past and future frames. ConvLSTM integrates convolution into recurrence, processing spatiotemporal features jointly @zhou_deep_2021.

Transformer self-attention relates all sequence elements directly rather than propagating through hidden states @ma_your_2026 @pei_deepfake_2024. TimeSformer and VideoSwin apply transformer architectures to video understanding. In-and-Across Frame Attention (IAFA) structures attention for both spatial and temporal dimensions @song_learning_2025.

Temporal coherence losses from generation research illuminate what properties manipulation attempts to maintain—and where it fails @melnik_face_2024. Detection can target precisely these temporal properties.

== Spatiotemporal Architectures

3D CNNs extend 2D convolutions to operate over space and time simultaneously @ma_your_2026 @diwan_systematic_2024 @ali_interframe_2025. I3D, SlowFast, and C3D employ kernels spanning spatial and temporal dimensions. These architectures capture motion and temporal evolution that neither spatial nor temporal analysis alone accesses.

Spatiotemporal models exhibit detection patterns uncorrelated with visual quality @ma_your_2026. They identify motion inconsistencies beyond what quality metrics measure. Trident networks fuse parallel streams—SRM for spatial forensics, 3D convolutions for temporal dynamics @diwan_systematic_2024.

The L3DE framework uses 3D convolutions for appearance, motion, and geometry analysis @chang_how_2025. VIDNet combines VGG spatial encoding with ConvLSTM temporal decoding @zhou_deep_2021. SlowFast processes multiple temporal resolutions simultaneously.

Computational cost limits deployment. 3D convolutions require substantially more resources than 2D, constraining real-time applications.

== Dataset Dependency and Generalization Challenges

Current detection suffers severe generalization limitations @ma_your_2026. Models trained on specific manipulation methods learn particular artifacts rather than generalizable forensic features. Cross-model evaluation shows detection success depends more on training-test statistical match than model sophistication.

Detectors achieving high accuracy on FaceForensics++ often fail on other datasets @pei_deepfake_2024. StyleGAN inherits biases from training data (FFHQ), and detection systems may learn these biases rather than manipulation signatures @melnik_face_2024.

CLIP-based backbones demonstrate improved generalization over traditional CNNs @ma_your_2026. Large-scale vision-language pretraining creates broader visual representations. General-purpose detection systems targeting diverse attack types achieve more consistent cross-dataset performance @nguyen_videofact_2024.

Comprehensive datasets spanning diverse manipulations, demographics, and sources remain research priorities @ali_interframe_2025. The AIGVDBench covers 31 generation models with 440,000+ videos @ma_your_2026.

== Robustness to Compression and Post-Processing

Compression acts as adversary to forensic analysis @pei_deepfake_2024 @diwan_systematic_2024. Aggressive compression scrubs subtle traces distinguishing manipulated from authentic content. Detection systems performing well on high-quality video may fail after compression.

H.264 standardization ensures consistent compression across training data, eliminating spurious correlations @ma_your_2026. Modern codecs apply content-adaptive compression varying by region, complicating analysis @nguyen_videofact_2024. Region-aware quality estimation weights analysis based on trace reliability.

Face restoration techniques can remove manipulation artifacts, functioning as anti-forensic processing @melnik_face_2024. Compression-aware training with augmented data improves real-world robustness @ali_interframe_2025 @pei_deepfake_2024.

= Chapter 3 Summary

Detection architectures have progressed through three generations. Frame-level CNNs extract spatial features—blending artifacts, noise anomalies, compression traces—but discard temporal information entirely. A manipulation that looks plausible frame-by-frame can still violate temporal coherence. RNNs, LSTMs, and transformers address this gap by modeling sequence dependencies. They catch flickering, motion discontinuities, and identity drift that single-frame analysis misses.

Spatiotemporal architectures represent the current frontier. 3D CNNs process space and time jointly, learning features that neither dimension reveals alone. SlowFast captures multiple temporal resolutions. Trident networks fuse parallel spatial and temporal streams. These approaches detect motion inconsistencies uncorrelated with visual quality—subtle violations invisible to quality metrics but revealing to properly trained models.

Yet architecture sophistication cannot overcome data limitations. Models trained on FaceForensics++ fail on novel datasets. Detectors learning StyleGAN artifacts miss diffusion-generated content. CLIP-based backbones show promise through broader pretraining, but generalization remains fundamentally unsolved. Compression compounds the problem—aggressive encoding scrubs the very traces detection relies upon. Real-world deployment demands robustness that current benchmarks don't measure and current models don't achieve.
