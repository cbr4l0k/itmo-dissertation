#heading(numbering: none)[#h(0.5em)Conclusion]

Generative AI has undermined video as evidence. Face swaps, altered license plates, and modified timestamps now pass casual inspection. Courts and journalists can no longer assume footage is authentic.

This research examined element-level deepfake detection with selective confidence estimation. The goal: build the theoretical foundation before experiments begin.

The investigation traced manipulation methods through detection signals to deployed systems. Deepfake techniques now include face replacement, motion transfer, object synthesis, and temporal reordering. Each leaves distinct traces. Spatial artifacts appear at edit boundaries. Frequency anomalies emerge in synthetic regions. Physical violations break lighting consistency. Compression mismatches mark where authentic and fabricated content meet.

Detection architectures have evolved to catch these signals. Frame-level CNNs gave way to spatiotemporal models with attention mechanisms. Yet cross-dataset tests expose a persistent gap: benchmark scores do not predict real-world performance. Deployed systems face even harder problems. The base-rate fallacy turns 99% accuracy into floods of false positives. The "Liar's Dividend" lets people dismiss authentic evidence as fabrication.

These problems demand a different approach. Whole-video classification fails when only a face or a timestamp was manipulated. The forensic signal gets diluted across millions of authentic pixels. Binary outputs tell users nothing about which regions look suspicious or why. High-confidence predictions on uncertain inputs destroy trust when they turn out wrong.

Element-level detection with selective confidence estimation solves these problems. Identifying specific manipulated objects within frames preserves signal strength for partial fakes. Abstaining when uncertainty runs high avoids the confident errors that erode trust. Showing which elements triggered concern, and with what confidence, supports human verification when errors carry consequences.

This research establishes the theoretical and methodological foundation for such a framework. It identifies what detection must recognize, what signals detection can exploit, what architectures can implement detection, and what conditions detection must satisfy. From this groundwork, experimental investigation of element-wise detection with uncertainty quantification can proceed.
