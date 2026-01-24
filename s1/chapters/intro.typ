#heading(numbering: none)[#h(0.5em)Introduction]

Courts admit video as evidence. Journalists publish footage to document events. People share clips expecting them to show what actually happened. This trust assumes video captures reality. Generative AI breaks that assumption. Tools that once required professional expertise now let anyone swap a face, change a license plate, or alter a timestamp while leaving the rest of the frame untouched. A prosecutor cannot tell if the defendant's face was swapped onto someone else's body. A viewer cannot tell if the politician actually said those words.

Current deepfake detectors do not help much with partial manipulations. They output a single probability for the whole video. When 95% of pixels are authentic and 5% contain a fabricated face, the detector often misses it. Even when detection succeeds, the system cannot say which part was faked or why it flagged the video.

This research investigates element-level deepfake detection with selective confidence estimation: systems that identify specific manipulated objects within frames and refuse to make predictions when uncertainty is high.

The objectives are:

#enum(
  numbering: "a)",
enum.item()[Analyze existing deepfake detection methods and their
limitations for partial manipulation scenarios.],
enum.item()[Review approaches for manipulation localization and
object-level analysis in video.],
enum.item()[Examine uncertainty quantification and selective prediction
techniques applicable to evidence verification.],
enum.item()[Structure collected materials as groundwork for developing
an element-wise detection framework.],
)


The expected outcome is a conceptual foundation for deepfake detection that prioritizes reliability and interpretability over whole-video classification accuracy.
