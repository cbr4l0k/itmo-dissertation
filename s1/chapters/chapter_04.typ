#heading[Chapter 4: Detection Errors, Trust Implications, and Evaluation Challenges]

Detection accuracy on benchmarks tells an incomplete story. Real-world deployment introduces asymmetric error costs, extreme class imbalance, and trust dynamics that laboratory evaluation ignores. Understanding these factors determines whether detection technology helps or harms.

== False Positives in Authentic Videos

False positives—flagging authentic content as manipulated—create serious problems. Vision-Language Models sometimes hallucinate artifacts in legitimate footage @ma_your_2026. Low-quality authentic video mimics generation artifacts. DeepSeek-VL2 and similar systems cannot reliably distinguish poor capture quality from synthetic content.

Human detection shows analogous patterns @somoray_human_2025. Viewers mistake unusual lighting, awkward angles, or compression artifacts for deepfake signatures. Anger increases suspicion. Warning labels raise general distrust without improving discrimination.

The base-rate fallacy devastates operational performance @layton_sok_nodate. Deepfakes are rare—anomalies among vast authentic content. Even 99% accuracy produces overwhelming false positive volumes at scale. Call center simulation: 333 flagged calls, 332 authentic, 1 actual deepfake. The detection system becomes operationally useless despite strong benchmark performance.

Detection fails on unusual but legitimate content @nguyen_videofact_2024. Small regions, poor illumination, heavy texture provide insufficient forensic information. Systems produce confident but incorrect predictions rather than abstaining. Extreme conditions—heavy blur, noise, unusual capture—systematically generate false positives @song_learning_2025.

Frame manipulation using authentic frames from the same video poses particular challenges @ali_interframe_2025. Shuffled or duplicated genuine frames share statistical properties with unmanipulated footage. Distinguishing temporal manipulation from benign editing or compression artifacts increases false positive risk.

== False Negatives in Edited Deepfakes

False negatives—missing actual manipulation—enable the harms deepfakes threaten: fraud, defamation, evidence fabrication. Human detection proves inadequate: up to 70% of participants failed to identify fakes in some studies @somoray_human_2025. Audio-only deepfakes evade human detection particularly often. Lip-syncing is harder to detect than face swapping despite both being face-centric.

Sophisticated manipulation minimizes forensic artifacts. As generation improves, the gap between synthetic and authentic narrows. Detection trained on older methods misses newer techniques entirely. Processing pipelines that downsample for efficiency lose subtle forgery traces @song_learning_2025.

Static scenes enable temporal manipulation without visible discontinuity @ali_interframe_2025. Frame deletion or insertion in low-motion footage leaves minimal traces. Each frame remains authentic; only the sequence is manipulated.

False positive and false negative rates trade off. Reducing one typically increases the other. Appropriate balance depends on deployment context and relative error costs.

== Trust Degradation in Forensic Contexts

Deepfake capability affects trust in all digital media, not just manipulated content. Hyper-realistic AI video contributes to "synthetic skepticism"—increasing doubt about legitimate recordings @ma_your_2026.

The "Liar's Dividend" lets bad actors dismiss authentic evidence as fabricated @layton_sok_nodate. When any video could be fake, genuine recordings can be denied without evidence of manipulation. This defense has already appeared in legal proceedings. Courts traditionally treated video as reliable evidence; deepfake capability challenges that foundation.

Journalism faces parallel pressures @ali_interframe_2025. Video documentation becomes uncertain. Rapid publication decisions occur without sophisticated forensic access. Unreliable detection might suppress legitimate footage or inadvertently publish manipulations.

Detection systems promising reliability but delivering uncertainty may harm trust rather than help @song_learning_2025. High false positive rates undermine confidence by incorrectly flagging authentic content. High false negative rates fail when manipulations are later revealed. Context-aware detection with uncertainty quantification better supports appropriate trust calibration @layton_sok_nodate.

== Dataset Bias and Evaluation Limitations

Benchmarks suffer semantic and distributional biases that skew evaluation @ma_your_2026. Detection systems exploit benchmark-specific patterns rather than learning general manipulation signatures. High accuracy reflects memorization, not generalization.

Inverted class distributions create fundamental mismatch @layton_sok_nodate. Training datasets balance authentic and manipulated content; real applications encounter vastly more authentic material. Models optimized for balanced data fail under actual prevalence conditions.

Limited metrics obscure operational failures @layton_sok_nodate. EER and AUC appear favorable while hiding problematic threshold behavior. Researchers report strong aggregate scores without examining real-world distribution performance.

Standardization challenges fragment research @somoray_human_2025. Diverse metrics—Likert scales, binary classifications, confidence ratings—resist comparison. Narrow focus on identity-swap deepfakes leaves other manipulation categories under-examined.

New datasets address emerging gaps. DVF covers diffusion-generated video @song_learning_2025. AIGVDBench spans 31 generation models with 440,000+ videos @ma_your_2026. But concentration on few datasets (SULFA, VTL) limits generalizability assessment @ali_interframe_2025.

== Practical Constraints in Deployment

Resource barriers affect both generation and detection @ma_your_2026. Comprehensive video analysis requires computational resources unavailable in all contexts. Sophisticated methods may be too intensive for real-time content moderation @ali_interframe_2025.

Resolution limitations constrain implementations @nguyen_videofact_2024. Systems limited to 1080p cannot process higher-resolution content at native quality. Model distillation creates smaller, faster versions with accuracy tradeoffs @melnik_face_2024.

Human verification costs matter operationally @layton_sok_nodate. Systems generating many flags—true or false—require analyst review. False positive floods make deployment impractical regardless of technical capability.

Platform integration demands processing enormous volumes with minimal latency @somoray_human_2025. Detection adding significant time or requiring specialized infrastructure may be infeasible at scale. Automated protections remain incompletely integrated into platforms.

Humans remain the "first line of defense" because AI detection has clear limitations @somoray_human_2025. While research advances, practical deployment relies substantially on human judgment. Regional restrictions and proprietary limitations prevent comprehensive evaluation of all generation methods @ma_your_2026.

= Chapter 4 Summary

Benchmark accuracy deceives. A detector achieving 99% on balanced test data becomes operationally useless when deepfakes constitute 0.3% of real traffic—332 false positives for every true detection. The base-rate fallacy transforms impressive laboratory performance into deployment failure. False positives damage legitimate creators and erode trust in detection itself. False negatives enable the frauds, defamations, and evidence fabrications that motivate detection research in the first place.

Trust dynamics extend beyond individual classification errors. The mere existence of convincing manipulation capability changes how all video evidence is perceived. The "Liar's Dividend" allows dismissal of authentic recordings without proof of fabrication—a defense already deployed in courtrooms. Detection systems promising certainty but delivering ambiguity may accelerate rather than reverse this trust erosion. Unreliable tools are worse than no tools at all.

Evaluation frameworks fail to capture these dynamics. Benchmarks suffer distributional biases that reward memorization over generalization. Metrics like EER and AUC hide operationally critical threshold behavior. Training on balanced datasets prepares models for conditions they'll never encounter. Meanwhile, practical constraints—computational costs, resolution limits, latency requirements, human review capacity—further constrain what laboratory-proven methods can actually deliver. Detection matters. But only if it works reliably, communicates uncertainty honestly, and integrates appropriately into verification workflows where stakes are real and errors have consequences.
