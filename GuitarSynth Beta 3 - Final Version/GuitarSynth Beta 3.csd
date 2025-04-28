 <Cabbage>
form caption("GuitarSynth") size(670, 866) colour(26,26,26) pluginId("def1") guiMode("queue"); QUEUE MODE ALLOWS UPDATING OF CABBAGE SECTION WIDGETS FROM CSOUND SECTION

image bounds(0, 0, 670, 866) file(mainpage.png) channel("image1") visible(1); MAIN PAGE BACKGROUND IMAGE
{
image bounds(0, 0, 670, 866) channel("HelpOverlay1") file("main_overlay.png") alpha(0); MAIN PAGE HELP OVERLAY IMAGE
button bounds(635, 833, 25, 25) channel("Help1") corners(25) value(0) alpha(0); MAIN PAGE HELP OVERLAY BUTTON

button bounds(630, 3, 27, 37) channel("KnobSlider") text("") imgFile("on", "KnobSlider1.png") imgFile("off", "KnobSlider2.png"); OPTION TO CHOOSE BETWEEN FADERS OR KNOBS

rslider bounds(205, 273, 65, 65) channel("octave") range(-1, 1, 0, 1, 1) filmstrip ("knob.png", 128) popupPrefix("Octave Shift: ") visible(0); OCTAVE
rslider bounds(288, 258, 90, 90) channel("mix") range(0, 1, 0.5, 1, 0.01)  filmstrip ("knob.png", 128) popupPrefix("Dry/Wet: ") visible(0); DRY/WET
rslider bounds(395, 273, 65, 65) channel("port") range(0, 0.1, 0.01, 1, 0.001) filmstrip ("knob.png", 128) popupPrefix("Portamento Speed: ") visible(0); PORT SPEED
rslider bounds(395, 273, 65, 65) channel("threshold") range(0.1, 0.5, 0.2, 1, 0.001) filmstrip ("knob.png", 128) popupPrefix("Detection Threshold: ") visible(0); INPUT THRESHOLD

rslider bounds(215, 255, 48, 110) channel("octave1") range(-1, 1, 0, 1, 1) filmstrip ("slider.png", 201) popupPrefix("Octave Shift: ") visible(1); OCTAVE
rslider bounds(308, 255, 48, 110) channel("mix1") range(0, 1, 0.5, 1, 0.01)  filmstrip ("slider.png", 201) popupPrefix("Dry/Wet: ") visible(1); DRY/WET
rslider bounds(405, 255, 48, 110) channel("port1") range(0, 0.1, 0.01, 1, 0.001) filmstrip ("slider.png", 201) popupPrefix("Portamento Speed: ") visible(1); PORT SPEED
rslider bounds(405, 255, 48, 110) channel("threshold1") range(0.1, 0.5, 0.2, 1, 0.001) filmstrip ("slider.png", 201) popupPrefix("Detection Threshold: ") visible(1); INPUT THRESHOLD

button bounds(299, 630, 70, 70) channel("bypass") text("Off", "On") corners(5) value(1) alpha(0); BYPASS SWITCH
image bounds(328, 580, 14, 14) channel("led") file("led on.png") alpha(1); BYPASS SWITCH LED IMAGE

vmeter bounds(77, 460, 10, 200) channel("vu1") value(0) outlineColour(0, 0, 0) overlayColour(0, 0, 0) meterColour:0(255, 0, 0) meterColour:1(255, 255, 0) meterColour:2(0, 255, 0) outlineThickness(1) alpha(1); INPUT VU METRE
vmeter bounds(578, 460, 10, 200) channel("vu2") value(0) outlineColour(0, 0, 0) overlayColour(0, 0, 0) meterColour:0(255, 0, 0) meterColour:1(255, 255, 0) meterColour:2(0, 255, 0) outlineThickness(1) alpha(1); OUTPUT L VU METRE
vmeter bounds(588, 460, 10, 200) channel("vu3") value(0) outlineColour(0, 0, 0) overlayColour(0, 0, 0) meterColour:0(255, 0, 0) meterColour:1(255, 255, 0) meterColour:2(0, 255, 0) outlineThickness(1) alpha(1); OUTPUT R VU METRE
}

signaldisplay bounds(197, 158, 136, 81) backgroundColour(0, 10, 0) colour("yellow") displayType("waveform") zoom(-1) signalVariable("aPitch") channel("display") alpha(1); DISPLAY SCREEN SHOWING INPUT PITCH
signaldisplay bounds(336, 158, 136, 81) backgroundColour(0, 10, 0) colour("white") displayType("waveform") zoom(-1) channel("display2") alpha(1); EMPTY DISPLAY SCREEN FOR UNDER NOTE NAME
label bounds(353, 184, 100, 30) channel("heading") text("-") fontColour(yellow) alpha(1); CHANGING NOTE NAME

image bounds(0, 0, 670, 866) file("advancedpage.png") channel("image2") visible(0); ADVANCED PAGE BACKGROUND
{
image bounds(0, 0, 670, 866) channel("HelpOverlay2") file("advanced_overlay1.png") alpha(0); ADVANCED PAGE HELP OVERLAY IMAGE 1
image bounds(0, 0, 670, 866) channel("HelpOverlay3") file("advanced_overlay2.png") alpha(0); ADVANCED PAGE HELP OVERLAY IMAGE 2
button bounds(635, 833, 25, 25) channel("Help2") corners(25) value(0) alpha(0);  ADVANCED PAGE HELP OVERLAY BUTTON

gentable bounds(325, 425, 189, 118) channel("ADSR") tableNumber(1) outlineThickness(2) tableBackgroundColour("0,0,0,0")  tableColour("red") ampRange(0,130,1) zoom(-1) fill(0){;LIVE UPDATING ADSR VISUAL

image bounds(10, 0, 10, 145) colour(0, 0, 0, 0) channel("attackGroup"){
label bounds(0, 6, 10, 10) channel("attackLabel") text("A") fontColour(255, 255, 255, 255) fontSize(15) alpha (0.75)}; ATTACK LABEL
image bounds(20, 0, 10, 145) colour(0, 0, 0, 0) channel("decayGroup"){
label bounds(0, 6, 10, 10) channel("decayLabel") text("D") fontColour(255, 255, 255, 255) fontSize(15) alpha (0.75)}; DECAY LABEL
image bounds(30, 0, 10, 145) colour(0, 0, 0, 0) channel("sustainGroup"){
label bounds(0, 6, 10, 10) channel("sustainLabel") text("S") fontColour(255, 255, 255, 255) fontSize(15) alpha (0.75)}; SUSTAIN LABEL
image bounds(40, 0, 10, 145) colour(0, 0, 0, 0) channel("releaseGroup"){
label bounds(0, 6, 10, 10) channel("releaseLabel") text("R") fontColour(255, 255, 255, 255) fontSize(15) alpha (0.75)}; RELEASE LABEL

image bounds(0,15,2,145) colour("yellow") channel("scrubber1") shape("round") alpha (0.5); ATTACK SECTION LINE
image bounds(0,15,2,145) colour("yellow") channel("scrubber2") shape("round") alpha (0.5); DECAY SECTION LINE
image bounds(0,15,2,145) colour("yellow") channel("scrubber3") shape("round") alpha (0.5); SUSTAIN SECTION LINE
image bounds(0,15,2,145) colour("yellow") channel("scrubber5") shape("round") alpha (0.5); RELEASE SECTION LINE
}

rslider bounds(64, 255, 48, 145) range(0, 127, 0, 1, 1) channel("lforate") popupPrefix("LFO Rate: ") filmstrip("slider.png", 201); LFO RATE
rslider bounds(121, 255, 48, 145) range(0, 127, 0, 1, 1) channel("lfodely") popupPrefix("LFO Delay: ") filmstrip("slider.png", 201); LFO DELAY

rslider bounds(174, 255, 48, 145) range(0, 127, 0, 1, 1) channel("dcolfo") popupPrefix("DCO LFO: ") filmstrip("slider.png", 201); DCO LFO
rslider bounds(231, 255, 48, 145) range(0, 127, 0, 1, 1) channel("pwpwm") popupPrefix("Pulse Width Modulation: ") filmstrip("slider.png", 201); PULSE WIDTH MODULATION
rslider bounds(288, 255, 48, 145) range(0, 3, 0, 1, 1) channel("sublevl") popupPrefix("Sub Level: ") filmstrip("slider.png", 201); SUB OSCILLATOR LEVEL
rslider bounds(344, 255, 48, 145) range(0, 3, 0, 1, 1) channel("noislvl") popupPrefix("Noise Level: ") filmstrip("slider.png", 201); NOISE GENERATOR LEVEL

rslider bounds(391, 255, 48, 145) range(0, 127, 127, 1, 1) channel("vcffreq") popupPrefix("VCF Frequency: ") filmstrip("slider.png", 201); VCF FREQUENCY
rslider bounds(452, 255, 48, 145) range(0, 127, 0, 1, 1) channel("vcfreso") popupPrefix("VCF Resonance: ") filmstrip("slider.png", 201); VCF RESONANCE
rslider bounds(512, 255, 48, 145) range(0, 127, 0, 1, 1) channel("vcfenvd") popupPrefix("VCF Envelope: ") filmstrip("slider.png", 201); VCF ENVELOPE
rslider bounds(573, 255, 48, 145) range(0, 127, 0, 1, 1) channel("vcflfo") popupPrefix("VCF LFO: ") filmstrip("slider.png", 201); VCF LFO

rslider bounds(63, 452, 48, 145) range(0, 3, 0, 1, 1) channel("hpffreq"), popupPrefix("Cutoff Frequency: ") filmstrip("slider.png", 201); HIGHPASS FREQUENCY

rslider bounds(142, 452, 48, 145) range(0, 3, 0, 1, 1) channel("pulse") popupText("Pulse Waveform") filmstrip("slider.png", 201); PULSE OSCILLATOR TYPE
rslider bounds(204, 452, 48, 145) range(0, 5, 0, 1, 1) channel("sawtooth") popupText("Sawtooth Waveform") filmstrip("slider.png", 201); SAWTOOTH OSCILLATOR TYPE
rslider bounds(264, 452, 48, 145) range(0, 5, 0, 1, 1) channel("sub") popupText("Sub Waveform") filmstrip("slider.png", 201); SUB OSCILLATOR TYPE

rslider bounds(339, 535, 55, 55) range(1, 127, 10,1,1) channel("envt1") popupPrefix("Attack Time: ") filmstrip ("revknob.png", 20); ATTACK TIME
rslider bounds(367, 535, 55, 55) range(0, 127, 64, 1, 1) channel("envt2") popupPrefix("Decay 1 Time: ") filmstrip ("revknob.png", 20); DECAY 1 TIME
rslider bounds(394, 535, 55, 55) range(0, 127, 64, 1, 1) channel("envt3") popupPrefix("Decay 2 Time: ") filmstrip ("revknob.png", 20); DECAY 2 TIME
rslider bounds(452, 535, 55, 55) range(0, 127, 34, 1, 1) channel("envt4") popupPrefix("Release Time: ") filmstrip ("revknob.png", 20); RELEASE TIME

rslider bounds(505, 430, 55, 55) range(0, 127, 96, 1, 1) channel("envl1") popupPrefix("Level 1: ") filmstrip ("revknob.png", 20); ATTACK LEVEL
rslider bounds(505, 460, 55, 55) range(0, 127, 44, 1, 1) channel("envl2") popupPrefix("Level 2: ") filmstrip ("revknob.png", 20); DECAY MIDPOINT LEVEL
rslider bounds(505, 490, 55, 55) range(0, 127, 44, 1, 1) channel("envl3") popupPrefix("Level 3: ") filmstrip ("revknob.png", 20); SUSTAIN LEVEL

rslider bounds(998, 318, 48, 48) range(0, 127, 0, 1, 1) text("DCO ENV") channel("dcoenvd") popupText("0") alpha(0) active(0); DCO ENVELOPE
rslider bounds(1020, 344, 57, 48) range(0, 127, 0, 1, 1) channel("pwmrate") text("PWM RATE") popupText("0") alpha(0) active(0); PULSE WIDTH MODULATION RATE
combobox bounds(53, 432, 59, 20) text("Normal", "GT") channel("vcaenv") active(0) alpha (0); VCA ENVELOPE TYPE
rslider bounds(10, 452, 48, 145) range(0, 127, 0, 1, 1) channel("vcaenvd") popupText("0") alpha(0) active(0); VCA ENVELOPE LEVEL

button bounds(563, 440, 40, 36) channel("crsrate") corners(5) value(0) alpha(0); CHORUS RATE BUTTON
image bounds(567, 424, 14, 14) channel("led2a1") file("led off.png") alpha(1); CHORUS LEFT LED OFF
image bounds(567, 424, 14, 14) channel("led3a1") file("led on.png") alpha(0); CHORUS LEFT LED ON
image bounds(583, 424, 14, 14) channel("led2a2") file("led off.png") alpha(1); CHORUS RIGHT LED OFF
image bounds(583, 424, 14, 14) channel("led3a2") file("led on.png") alpha(0); CHORUS RIGHT LED ON

button bounds(563, 537, 40, 36) channel("LiveMode") corners(5) value(1) alpha(0); LIVE MODE BUTTON
image bounds(576, 521, 14, 14) channel("led2b") file("led off.png") alpha(1); LIVE MODE LED OFF
image bounds(576, 521, 14, 14) channel("led3b") file("led on.png") alpha(0); LIVE MODE LED ON

combobox bounds(100, 390, 50, 21) channel("dcorng") value(2) text("4", "8", "16", "32") alpha(0) active(0); DCO RANGE
combobox bounds(978, 292, 80, 20) text("Normal", "Invert", "D-Norm", "D-Invert") channel("dcoenv") alpha(0) active(0); DCO ENVELOPE TYPE
combobox bounds(880, 292, 80, 20) text("Normal", "Invert", "D-Norm", "D-Invert", "dyn") channel("vcfenv") alpha(0) active(0); VCF ENVELOPE TYPE

rslider bounds(247, 678, 55, 55) channel("revfeedback") range(0, 0.9, 0, 1, 0.01) filmstrip ("revknob.png", 20) popupPrefix("Reverb Feedback level: "); REVERB FEEDBACK LEVEL
rslider bounds(310, 678, 55, 55) channel("revcutoff") range(0, 20000, 0, 1, 1) filmstrip ("revknob.png", 20) popupPrefix("Reverb Cutoff: ") popupPostfix("Hz"); REVERB CUTOFF FREQUENCY
rslider bounds(370, 678, 55, 55) channel("revmix") range(0, 1, 0, 1, 0.1) filmstrip ("revknob.png", 20) popupPrefix("Reverb Mix level: "); REVERB MIX LEVEL
}

combobox bounds(170, 0, 325, 45) channel("combobox") populate("*.snaps") channelType("string")
rslider bounds(50, 50, 48, 145) range(0, 10, 0, 1, 1) channel("PRESET") active(0) alpha(0) visible(0);
button bounds(0, 0, 170, 45) channel("Trigger") text("BASIC SETTINGS", "ADVANCED SETTINGS") corners(5) presetIgnore(1) value(1)

filebutton bounds(495, 0, 125, 45) text("SAVE PRESET") populate("*.snaps", "test") mode("named preset"); SAVE NEW PRESET/ OVERWRITE PRESET BUTTON
;filebutton bounds(12, 335, 60, 25) text("Remove") populate("*.snaps", "test") mode("remove preset"); REMOVE PRESET BUTTON FOR BACKEND MANAGEMENT

combobox bounds(10, 837, 80, 20) mode("resize") value(3); RESIZE COMBOBOX (ONLY WORKS IN DAW, NOT IN CABBAGE)

image bounds(37, 704, 86, 86) channel("knobglow1") file("knobglow.png") alpha(1); INPUT KNOB GLOW UNDERLAY
image bounds(546, 704, 86, 86) channel("knobglow2") file("knobglow.png") alpha(1); OUTPUT KNOB GLOW UNDERLAY;


rslider bounds(49, 717, 63, 63) channel("input") range(0, 1, 0.5, 1, 0.01) popupPrefix("Input Level: ") filmstrip ("knob.png", 128); INPUT LEVEL
rslider bounds(557, 717, 63, 63) channel("output") range(0, 1, 0.5, 1, 0.01) popupPrefix("Output Level: ") filmstrip ("knob.png", 128); OUTPUT LEVEL
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-dm0 -n -+rtmidi=NULL -M0 --displays
</CsOptions>
<CsInstruments>

sr=44100
kr=4410
ksmps = 10
nchnls = 2
0dbfs = 1

// ---------------------------------------------------------------------------------------------------------------
// Global variables
// ---------------------------------------------------------------------------------------------------------------


// Values of lfo amplitude in % of frequency when applied to DCO from 0-127 for "DCO LFO"
// NB : I  interpolated those values from my 30 years old Juno-2, results weren't stable between measures...
gilfovals[] fillarray 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.001567, 0.003348, 0.005130, 
                      0.006911, 0.008692, 0.010473, 0.012254, 0.014036, 0.015817, 0.017598, 0.019379, 
                      0.021160, 0.022942, 0.024723, 0.026504, 0.028285, 0.029891, 0.031496, 0.033101, 
                      0.034707, 0.036312, 0.037918, 0.039523, 0.041128, 0.042734, 0.044339, 0.045998, 
                      0.047657, 0.049316, 0.050975, 0.052634, 0.054292, 0.055951, 0.057610, 0.059269, 
                      0.060928, 0.062511, 0.064093, 0.065675, 0.067258, 0.068840, 0.070423, 0.072005, 
                      0.073588, 0.075170, 0.076753, 0.078404, 0.080055, 0.081706, 0.083358, 0.085009, 
                      0.086660, 0.088311, 0.089963, 0.091614, 0.093265, 0.095941, 0.098616, 0.101292, 
                      0.103968, 0.106643, 0.109319, 0.111994, 0.114670, 0.117346, 0.120021, 0.123462, 
                      0.126902, 0.130342, 0.133782, 0.137222, 0.140662, 0.144102, 0.147542, 0.150982, 
                      0.154422, 0.157786, 0.161150, 0.164513, 0.167877, 0.171241, 0.174604, 0.177968, 
                      0.181332, 0.184695, 0.188059, 0.192952, 0.197844, 0.202737, 0.207629, 0.212522, 
                      0.217415, 0.222307, 0.227200, 0.232092, 0.236985, 0.244003, 0.251021, 0.258038, 
                      0.265056, 0.272074, 0.279092, 0.286110, 0.293127, 0.300145, 0.307163, 0.313822, 
                      0.320480, 0.327139, 0.333797, 0.340456, 0.347114, 0.353773, 0.360431, 0.367090, 
                      0.373748, 0.381480, 0.389212, 0.396944, 0.404676, 0.412408, 0.420140, 0.427872
                      
// Values of lfo delay in sec from 0-127 "LFO DLY"
// approximate formula used:  exp([LDO DLY]/14.2-3)/10
// NB : I  extrapolated those values from my 30 years old Juno-2, results weren't stable between measures...
gilfodels[] fillarray 0.069000, 0.064100, 0.059200, 0.054300, 0.049400, 0.044500, 0.039600, 0.034700, 
                      0.029800, 0.024900, 0.020000, 0.018300, 0.016600, 0.014900, 0.013200, 0.011500, 
                      0.009800, 0.008100, 0.006400, 0.004700, 0.003000, 0.007500, 0.012000, 0.016500, 
                      0.021000, 0.025500, 0.030000, 0.034500, 0.039000, 0.043500, 0.048000, 0.053200, 
                      0.058400, 0.063600, 0.068800, 0.074000, 0.079200, 0.084400, 0.089600, 0.094800, 
                      0.100000, 0.104600, 0.109200, 0.113800, 0.118400, 0.123000, 0.127600, 0.132200, 
                      0.136800, 0.141400, 0.146000, 0.161000, 0.176000, 0.191000, 0.206000, 0.221000, 
                      0.236000, 0.251000, 0.266000, 0.281000, 0.296000, 0.368500, 0.441000, 0.513500, 
                      0.586000, 0.658500, 0.731000, 0.803500, 0.876000, 0.948500, 1.021000, 1.036400, 
                      1.051800, 1.067200, 1.082600, 1.098000, 1.113400, 1.128800, 1.144200, 1.159600, 
                      1.175000, 1.289800, 1.404600, 1.519400, 1.634200, 1.749000, 1.863800, 1.978600, 
                      2.093400, 2.208200, 2.323000, 2.538500, 2.754000, 2.969500, 3.185000, 3.400500, 
                      3.616000, 3.831500, 4.047000, 4.262500, 4.478000, 5.092500, 5.707000, 6.321500, 
                      6.936000, 7.550500, 8.165000, 8.779500, 9.394000, 10.008500, 10.623000, 11.799300, 
                      12.975600, 14.151900, 15.328200, 16.504500, 17.680800, 18.857100, 20.033400, 21.209700, 
                      22.386000, 23.986286, 25.586571, 27.186857, 28.787143, 30.387429, 31.987714, 33.588000

// Primary LFO rate
gkLfoRate[] fillarray 0.000411, 0.003560, 0.006709, 0.009858, 0.013007, 0.016156, 0.019305, 0.022454, 
                      0.025603, 0.028752, 0.031901, 0.035050, 0.038199, 0.041348, 0.044497, 0.047646, 
                      0.050795, 0.053944, 0.057093, 0.060242, 0.063391, 0.069015, 0.074639, 0.080263, 
                      0.085887, 0.091511, 0.097135, 0.102760, 0.108384, 0.114008, 0.119632, 0.131495, 
                      0.143358, 0.155222, 0.167085, 0.178948, 0.190812, 0.202675, 0.214539, 0.226402, 
                      0.238265, 0.258837, 0.279409, 0.299981, 0.320553, 0.341125, 0.361697, 0.382268, 
                      0.402840, 0.423412, 0.443984, 0.488356, 0.532728, 0.577100, 0.621473, 0.665845, 
                      0.710217, 0.754589, 0.798961, 0.843333, 0.887705, 0.964156, 1.040606, 1.117057, 
                      1.193507, 1.269958, 1.346408, 1.422858, 1.499309, 1.575759, 1.652210, 1.808662, 
                      1.965113, 2.121565, 2.278017, 2.434468, 2.590920, 2.747372, 2.903824, 3.060275, 
                      3.216727, 3.504346, 3.791965, 4.079584, 4.367203, 4.654822, 4.942441, 5.230060, 
                      5.517679, 5.805298, 6.092917, 6.706867, 7.320817, 7.934767, 8.548717, 9.162666, 
                      9.776616, 10.390566, 11.004516, 11.618466, 12.232416, 13.054164, 13.875912, 14.697660, 
                      15.519409, 16.341157, 17.162905, 17.984653, 18.806401, 19.628150, 20.449898, 23.069631, 
                      25.689364, 28.309098, 30.928831, 33.548564, 36.168297, 38.788031, 41.407764, 44.027497, 
                      46.647230, 49.266964, 51.886697, 54.506430, 57.126163, 59.745897, 62.365630, 64.985363
                      

// Rates for 
gkPwmRate[] fillarray 0.000000, 0.002994, 0.005988, 0.008982, 0.011976, 0.014970, 0.017964, 0.020958, 
                      0.023952, 0.026946, 0.029940, 0.032223, 0.034506, 0.036789, 0.039072, 0.041355, 
                      0.043638, 0.045921, 0.048204, 0.050487, 0.052770, 0.056668, 0.060565, 0.064462, 
                      0.068360, 0.072257, 0.076154, 0.080051, 0.083949, 0.087846, 0.091743, 0.098255, 
                      0.104767, 0.111279, 0.117791, 0.124303, 0.130815, 0.137327, 0.143839, 0.150351, 
                      0.156863, 0.168424, 0.179986, 0.191548, 0.203109, 0.214671, 0.226233, 0.237795, 
                      0.249356, 0.260918, 0.272480, 0.298329, 0.324178, 0.350028, 0.375877, 0.401727, 
                      0.427576, 0.453425, 0.479275, 0.505124, 0.530973, 0.561608, 0.592243, 0.622878, 
                      0.653512, 0.684147, 0.714782, 0.745416, 0.776051, 0.806686, 0.837321, 0.906650, 
                      0.975979, 1.045308, 1.114637, 1.183966, 1.253296, 1.322625, 1.391954, 1.461283, 
                      1.530612, 1.645408, 1.760204, 1.875000, 1.989796, 2.104592, 2.219388, 2.334184, 
                      2.448980, 2.563776, 2.678571, 2.828571, 2.978571, 3.128571, 3.278571, 3.428571, 
                      3.686810, 3.945048, 4.203287, 4.461525, 4.719764, 5.009744, 5.299725, 5.589705, 
                      5.879685, 6.169666, 6.497294, 6.824923, 7.152551, 7.480179, 7.807808, 8.272163, 
                      8.736519, 9.200874, 9.665229, 10.129585, 10.593940, 11.058296, 11.522651, 11.987006, 
                      12.451362, 13.591026, 14.730690, 15.870354, 17.010017, 18.149681, 19.289345, 20.429009



// vcffreq values 0-127
givcffreq[] fillarray   11.528952, 11.747088, 11.965224, 12.18336, 12.401496, 12.619632, 12.837768, 13.055904, 
                        13.27404, 13.492176, 13.710312, 14.3935066, 15.0767012, 15.7598958, 16.4430904, 17.126285, 
                        17.8094796, 18.4926742, 19.1758688, 19.8590634, 20.542258, 22.3658941, 24.1895302, 26.0131663, 
                        27.8368024, 29.6604385, 31.4840746, 33.3077107, 35.1313468, 36.9549829, 38.778619, 41.8103215, 
                        44.842024, 47.8737265, 50.905429, 53.9371315, 56.968834, 60.0005365, 63.032239, 66.0639415, 
                        69.095644, 76.8269366, 84.5582292, 92.2895218, 100.0208144, 107.752107, 115.4833996, 123.2146922, 
                        130.9459848, 138.6772774, 146.40857, 162.7906082, 179.1726464, 195.5546846, 211.9367228, 228.318761, 
                        244.7007992, 261.0828374, 277.4648756, 293.8469138, 310.228952, 331.3801396, 352.5313272, 373.6825148, 
                        394.8337024, 415.98489, 437.1360776, 458.2872652, 479.4384528, 500.5896404, 521.740828, 584.6627719, 
                        647.5847157, 710.5066596, 773.4286034, 836.3505473, 899.2724911, 962.194435, 1025.116379, 1088.038323, 
                        1150.960267, 1293.452801, 1435.945335, 1578.437869, 1720.930403, 1863.422937, 2005.915472, 2148.408006, 
                        2290.90054, 2433.393074, 2575.885608, 2757.56804, 2939.250473, 3120.932905, 3302.615337, 3484.297769, 
                        3665.980201, 3847.662633, 4029.345065, 4211.027497, 4392.70993, 4903.120438, 5413.530946, 5923.941455, 
                        6434.351963, 6944.762471, 7455.17298, 7965.583488, 8475.993997, 8986.404505, 9496.815013, 10007.22552, 
                        10517.63603, 11062.20447, 11606.7729, 12151.34134, 12695.90977, 13240.47821, 13785.04664, 14329.61508, 
                        14874.18351, 15276.22656, 15678.26961, 16080.31266, 16482.35571, 16884.39876, 17286.44181, 17688.48486
                      


giFac = 1
gienvt1[] fillarray     0.004187 * giFac, 0.004487 * giFac, 0.004809 * giFac, 0.005154 * giFac, 0.005524 * giFac, 0.005921 * giFac, 0.006346 * giFac, 0.006801 * giFac, 0.007289 * giFac, 0.007812 * giFac, 
                        0.008373 * giFac, 0.008974 * giFac, 0.009618 * giFac, 0.010309 * giFac, 0.011049 * giFac, 0.011842 * giFac, 0.012691 * giFac, 0.013602 * giFac, 0.014579 * giFac, 0.015625 * giFac, 
                        0.016746 * giFac, 0.017948 * giFac, 0.019237 * giFac, 0.020617 * giFac, 0.022097 * giFac, 0.023683 * giFac, 0.025383 * giFac, 0.027205 * giFac, 0.029157 * giFac, 0.031250 * giFac, 
                        0.033493 * giFac, 0.035897 * giFac, 0.038473 * giFac, 0.041235 * giFac, 0.044194 * giFac, 0.047366 * giFac, 0.050766 * giFac, 0.054409 * giFac, 0.058315 * giFac, 0.062500 * giFac, 
                        0.066986 * giFac, 0.071794 * giFac, 0.076947 * giFac, 0.082469 * giFac, 0.088388 * giFac, 0.094732 * giFac, 0.101532 * giFac, 0.108819 * giFac, 0.116629 * giFac, 0.125000 * giFac, 
                        0.133972 * giFac, 0.143587 * giFac, 0.153893 * giFac, 0.164938 * giFac, 0.176777 * giFac, 0.189465 * giFac, 0.203063 * giFac, 0.217638 * giFac, 0.233258 * giFac, 0.250000 * giFac, 
                        0.267943 * giFac, 0.287175 * giFac, 0.307786 * giFac, 0.329877 * giFac, 0.353553 * giFac, 0.378929 * giFac, 0.406126 * giFac, 0.435275 * giFac, 0.466516 * giFac, 0.500000 * giFac, 
                        0.535887 * giFac, 0.574349 * giFac, 0.615572 * giFac, 0.659754 * giFac, 0.707107 * giFac, 0.757858 * giFac, 0.812252 * giFac, 0.870551 * giFac, 0.933033 * giFac, 1.000000 * giFac, 
                        1.071773 * giFac, 1.148698 * giFac, 1.231144 * giFac, 1.319508 * giFac, 1.414214 * giFac, 1.515717 * giFac, 1.624505 * giFac, 1.741101 * giFac, 1.866066 * giFac, 2.000000 * giFac, 
                        2.143547 * giFac, 2.297397 * giFac, 2.462289 * giFac, 2.639016 * giFac, 2.828427 * giFac, 3.031433 * giFac, 3.249010 * giFac, 3.482202 * giFac, 3.732132 * giFac, 4.000000 * giFac, 
                        4.287094 * giFac, 4.594793 * giFac, 4.924578 * giFac, 5.278032 * giFac, 5.656854 * giFac, 6.062866 * giFac, 6.498019 * giFac, 6.964405 * giFac, 7.464264 * giFac, 8.000000 * giFac, 
                        8.574188 * giFac, 9.189587 * giFac, 9.849155 * giFac, 10.556063 * giFac, 11.313709 * giFac, 12.125733 * giFac, 12.996038 * giFac, 13.928809 * giFac, 14.928528 * giFac, 
                        16.000000 * giFac, 17.148375 * giFac, 18.379174 * giFac, 19.698311 * giFac, 21.112127 * giFac, 22.627417 * giFac, 24.251465 * giFac, 25.992077

// env T3
gienvt3[] fillarray     0.090000 * giFac, 0.097000 * giFac, 0.104000 * giFac, 0.111000 * giFac, 0.118000 * giFac, 0.125000 * giFac, 0.132000 * giFac, 0.139000 * giFac, 
                        0.146000 * giFac, 0.153000 * giFac, 0.160000 * giFac, 0.164000 * giFac, 0.168000 * giFac, 0.172000 * giFac, 0.176000 * giFac, 0.180000 * giFac, 
                        0.184000 * giFac, 0.188000 * giFac, 0.192000 * giFac, 0.196000 * giFac, 0.200000 * giFac, 0.205000 * giFac, 0.210000 * giFac, 0.215000 * giFac, 
                        0.220000 * giFac, 0.225000 * giFac, 0.230000 * giFac, 0.235000 * giFac, 0.240000 * giFac, 0.245000 * giFac, 0.250000 * giFac, 0.258000 * giFac, 
                        0.266000 * giFac, 0.274000 * giFac, 0.282000 * giFac, 0.290000 * giFac, 0.298000 * giFac, 0.306000 * giFac, 0.314000 * giFac, 0.322000 * giFac, 
                        0.330000 * giFac, 0.348000 * giFac, 0.366000 * giFac, 0.384000 * giFac, 0.402000 * giFac, 0.420000 * giFac, 0.438000 * giFac, 0.456000 * giFac, 
                        0.474000 * giFac, 0.492000 * giFac, 0.510000 * giFac, 0.539000 * giFac, 0.568000 * giFac, 0.597000 * giFac, 0.626000 * giFac, 0.655000 * giFac, 
                        0.684000 * giFac, 0.713000 * giFac, 0.742000 * giFac, 0.771000 * giFac, 0.800000 * giFac, 0.858000 * giFac, 0.916000 * giFac, 0.974000 * giFac, 
                        1.032000 * giFac, 1.090000 * giFac, 1.148000 * giFac, 1.206000 * giFac, 1.264000 * giFac, 1.322000 * giFac, 1.380000 * giFac, 1.545000 * giFac, 
                        1.710000 * giFac, 1.875000 * giFac, 2.040000 * giFac, 2.205000 * giFac, 2.370000 * giFac, 2.535000 * giFac, 2.700000 * giFac, 2.865000 * giFac, 
                        3.030000 * giFac, 3.595000 * giFac, 4.160000 * giFac, 4.725000 * giFac, 5.290000 * giFac, 5.855000 * giFac, 6.420000 * giFac, 6.985000 * giFac, 
                        7.550000 * giFac, 8.115000 * giFac, 8.680000 * giFac, 9.224000 * giFac, 9.768000 * giFac, 10.312000 * giFac, 10.856000 * giFac, 11.400000 * giFac, 
                        11.864000 * giFac, 12.328000 * giFac, 12.792000 * giFac, 13.256000 * giFac, 13.720000 * giFac, 14.447500 * giFac, 15.175000 * giFac, 15.902500 * giFac, 
                        16.630000 * giFac, 17.357500 * giFac, 18.085000 * giFac, 18.812500 * giFac, 19.540000 * giFac, 20.267500 * giFac, 20.995000 * giFac, 22.048500 * giFac, 
                        23.102000 * giFac, 24.155500 * giFac, 25.209000 * giFac, 26.262500 * giFac, 27.316000 * giFac, 28.369500 * giFac, 29.423000 * giFac, 30.476500 * giFac, 
                        31.530000 * giFac, 32.394286 * giFac, 33.258571 * giFac, 34.122857 * giFac, 34.987143 * giFac, 35.851429 * giFac, 36.715714 * giFac, 37.580000



// ent T4 values 0-127 
gienvt4[] fillarray     0.007000 * giFac, 0.009300 * giFac, 0.011600 * giFac, 0.013900 * giFac, 0.016200 * giFac, 0.018500 * giFac, 0.020800 * giFac, 0.023100 * giFac, 
                        0.025400 * giFac, 0.027700 * giFac, 0.030000 * giFac, 0.034400 * giFac, 0.038800 * giFac, 0.043200 * giFac, 0.047600 * giFac, 0.052000 * giFac, 
                        0.056400 * giFac, 0.060800 * giFac, 0.065200 * giFac, 0.069600 * giFac, 0.074000 * giFac, 0.083100 * giFac, 0.092200 * giFac, 0.101300 * giFac, 
                        0.110400 * giFac, 0.119500 * giFac, 0.128600 * giFac, 0.137700 * giFac, 0.146800 * giFac, 0.155900 * giFac, 0.165000 * giFac, 0.184100 * giFac, 
                        0.203200 * giFac, 0.222300 * giFac, 0.241400 * giFac, 0.260500 * giFac, 0.279600 * giFac, 0.298700 * giFac, 0.317800 * giFac, 0.336900 * giFac, 
                        0.356000 * giFac, 0.394400 * giFac, 0.432800 * giFac, 0.471200 * giFac, 0.509600 * giFac, 0.548000 * giFac, 0.586400 * giFac, 0.624800 * giFac, 
                        0.663200 * giFac, 0.701600 * giFac, 0.740000 * giFac, 0.808000 * giFac, 0.876000 * giFac, 0.944000 * giFac, 1.012000 * giFac, 1.080000 * giFac, 
                        1.148000 * giFac, 1.216000 * giFac, 1.284000 * giFac, 1.352000 * giFac, 1.420000 * giFac, 1.541000 * giFac, 1.662000 * giFac, 1.783000 * giFac, 
                        1.904000 * giFac, 2.025000 * giFac, 2.146000 * giFac, 2.267000 * giFac, 2.388000 * giFac, 2.509000 * giFac, 2.630000 * giFac, 2.887000 * giFac, 
                        3.144000 * giFac, 3.401000 * giFac, 3.658000 * giFac, 3.915000 * giFac, 4.172000 * giFac, 4.429000 * giFac, 4.686000 * giFac, 4.943000 * giFac, 
                        5.200000 * giFac, 5.520000 * giFac, 5.840000 * giFac, 6.160000 * giFac, 6.480000 * giFac, 6.800000 * giFac, 7.120000 * giFac, 7.440000 * giFac, 
                        7.760000 * giFac, 8.080000 * giFac, 8.400000 * giFac, 8.909000 * giFac, 9.418000 * giFac, 9.927000 * giFac, 10.436000 * giFac, 10.945000 * giFac, 
                        11.454000 * giFac, 11.963000 * giFac, 12.472000 * giFac, 12.981000 * giFac, 13.490000 * giFac, 14.243000 * giFac, 14.996000 * giFac, 15.749000 * giFac, 
                        16.502000 * giFac, 17.255000 * giFac, 18.008000 * giFac, 18.761000 * giFac, 19.514000 * giFac, 20.267000 * giFac, 21.020000 * giFac, 22.101000 * giFac, 
                        23.182000 * giFac, 24.263000 * giFac, 25.344000 * giFac, 26.425000 * giFac, 27.506000 * giFac, 28.587000 * giFac, 29.668000 * giFac, 30.749000 * giFac, 
                        31.830000 * giFac, 32.902857 * giFac, 33.975714 * giFac, 35.048571 * giFac, 36.121429 * giFac, 37.194286 * giFac, 38.267143 * giFac, 39.340000



// dco env "a" value 
gkDcoEnva[] fillarray  0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0.01475 ,0.015234375 ,0.01571875 ,0.016203125 ,0.0166875 ,0.017171875 ,0.01765625 ,0.018140625 ,0.018625 ,0.019109375 ,0.01959375 ,0.020078125 ,0.0205625 ,0.021046875 ,0.02153125 ,0.022015625 ,0.0225 ,0.023075 ,0.02365 ,0.024225 ,0.0248 ,0.025375 ,0.02595 ,0.026525 ,0.0271 ,0.027675 ,0.02825 ,0.028995 ,0.02974 ,0.030485 ,0.03123 ,0.031975 ,0.03272 ,0.033465 ,0.03421 ,0.034955 ,0.0357 ,0.03665 ,0.0376 ,0.03855 ,0.0395 ,0.04045 ,0.0414 ,0.04235 ,0.0433 ,0.04425 ,0.0452 ,0.04620105882 ,0.04720211765 ,0.04820317647 ,0.04920423529 ,0.05020529412 ,0.05120635294 ,0.05220741176 ,0.05320847059 ,0.05420952941 ,0.05521058824 ,0.05621164706 ,0.05721270588 ,0.05821376471 ,0.05921482353 ,0.06021588235 ,0.06121694118 ,0.062218 

// dco env "b" value                                              
gkDcoEnvb[] fillarray  0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,2.132 ,2.1325625 ,2.133125 ,2.1336875 ,2.13425 ,2.1348125 ,2.135375 ,2.1359375 ,2.1365 ,2.1370625 ,2.137625 ,2.1381875 ,2.13875 ,2.1393125 ,2.139875 ,2.1404375 ,2.141 ,2.14082 ,2.14064 ,2.14046 ,2.14028 ,2.1401 ,2.13992 ,2.13974 ,2.13956 ,2.13938 ,2.1392 ,2.14048 ,2.14176 ,2.14304 ,2.14432 ,2.1456 ,2.14688 ,2.14816 ,2.14944 ,2.15072 ,2.152 ,2.1533 ,2.1546 ,2.1559 ,2.1572 ,2.1585 ,2.1598 ,2.1611 ,2.1624 ,2.1637 ,2.165 ,2.165832153 ,2.166664307 ,2.16749646 ,2.168328613 ,2.169160766 ,2.16999292 ,2.170825073 ,2.171657226 ,2.172489379 ,2.173321533 ,2.174153686 ,2.174985839 ,2.175817992 ,2.176650146 ,2.177482299 ,2.178314452 ,2.179146605


gkCrsRate[] fillarray  0, 0.004839651931 ,0.005965252815 ,0.007090853698 ,0.008216454581 ,0.009342055464 ,0.01046765635 ,0.01159325723 ,0.01271885811 ,
                       0.013844459 ,0.01497005988 ,0.01609566076 ,0.01722126165 ,0.01834686253 ,0.01947246341 ,0.0205980643 ,0.02172366518 ,
                       0.02284926606 ,0.02397486695 ,0.02510046783 ,0.02622606871 ,0.02809986472 ,0.02997366073 ,0.03184745673 ,0.03372125274 ,
                       0.03559504874 ,0.03746884475 ,0.03934264076 ,0.04121643676 ,0.04309023277 ,0.04496402878 ,0.04868455277 ,0.05240507676 ,
                       0.05612560075 ,0.05984612474 ,0.06356664874 ,0.06728717273 ,0.07100769672 ,0.07472822071 ,0.0784487447 ,0.08216926869 ,
                       0.08742943077 ,0.09268959285 ,0.09794975493 ,0.103209917 ,0.1084700791 ,0.1137302412 ,0.1189904032 ,0.1242505653 ,
                       0.1295107274 ,0.1347708895 ,0.1452746159 ,0.1557783423 ,0.1662820687 ,0.1767857951 ,0.1872895215 ,0.1977932479 ,
                       0.2082969743 ,0.2188007007 ,0.2293044271 ,0.2398081535 ,0.2577736469 ,0.2757391402 ,0.2937046336 ,0.311670127 ,
                       0.3296356204 ,0.3476011137 ,0.3655666071 ,0.3835321005 ,0.4014975939 ,0.4194630872 ,0.4552168562 ,0.4909706252 ,
                       0.5267243942 ,0.5624781631 ,0.5982319321 ,0.6339857011 ,0.6697394701 ,0.7054932391 ,0.741247008 ,0.777000777 ,
                       0.8356643357 ,0.8943278943 ,0.952991453 ,1.011655012 ,1.07031857 ,1.128982129 ,1.187645688 ,1.246309246 ,
                       1.304972805 ,1.363636364 ,1.441941779 ,1.520247195 ,1.59855261 ,1.676858026 ,1.755163441 ,1.833468857 ,
                       1.911774272 ,1.990079688 ,2.068385103 ,2.146690519 ,2.355053194 ,2.56341587 ,2.771778545 ,2.980141221 ,
                       3.188503896 ,3.396866572 ,3.605229247 ,3.813591923 ,4.021954598 ,4.230317274 ,4.530177113 ,4.830036952 ,
                       5.12989679 ,5.429756629 ,5.729616468 ,6.029476307 ,6.329336146 ,6.629195985 ,6.929055824 ,7.228915663 ,
                       7.66141489 ,8.093914118 ,8.526413346 ,8.958912573 ,9.391411801 ,9.823911029 ,10.25641026

// Amplitude of pwm oscilation as a ratio
gipwmAmp = 0.375



;Author: Iain McCurdy (2012)
;http://iainmccurdy.org/csound.html
opcode	StChorus,aa,aakkakk
	ainL,ainR,krate,kdepth,aoffset,kwidth,kmix	xin;READ IN INPUT ARGUMENTS
	ilfoshape	ftgentmp	0, 0, 131072, 19, 1, 0.5, 0,  0.5;POSITIVE DOMAIN ONLY SINE WAVE
	kporttime	linseg	0,0.001,0.02;RAMPING UP PORTAMENTO VARIABLE
	kChoDepth	portk	kdepth*0.01, kporttime;SMOOTH VARIABLE CHANGES WITH PORTK
	aChoDepth	interp	kChoDepth;INTERPOLATE TO CREATE A-RATE VERSION OF K-RATE VARIABLE
	amodL 		osciliktp 	krate, ilfoshape, 0	;LEFT CHANNEL LFO
	amodR 		osciliktp 	krate, ilfoshape, kwidth*0.5;THE PHASE OF THE RIGHT CHANNEL LFO IS ADJUSTABLE
	amodL		=		(amodL*aChoDepth)+aoffset;RESCALE AND OFFSET LFO (LEFT CHANNEL)
	amodR		=		(amodR*aChoDepth)+aoffset;RESCALE AND OFFSET LFO (RIGHT CHANNEL)
	aChoL		vdelay	ainL, amodL*1000, 1.2*1000;CREATE VARYING DELAYED / CHORUSED SIGNAL (LEFT CHANNEL) 
	aChoR		vdelay	ainR, amodR*1000, 1.2*1000;CREATE VARYING DELAYED / CHORUSED SIGNAL (RIGHT CHANNEL)
	aoutL		ntrpol 	ainL*0.6, aChoL*0.6, kmix;MIX DRY AND WET SIGNAL (LEFT CHANNEL)
	aoutR		ntrpol 	ainR*0.6, aChoR*0.6, kmix;MIX DRY AND WET SIGNAL (RIGHT CHANNEL)
			xout	aoutL * 2 ,aoutR * 2;SEND AUDIO BACK TO CALLER INSTRUMENT
endop


instr 1; INPUT TRACKING AND PITCH DETECTION

    gkOutL, gkOutR, gkAmp, gkPitch, gkLiveMode, kInputRMS, gkSynthRMSL, gkSynthRMSR, gkReverbRMSL, gkReverbRMSR, gkNoteName, gkMix, gkEnv, kCounter1, kCounter2, kloudprev init 0; INITIALISE K-RATE VARIABLES
    gaReverbL, gaReverbR, aInput init 0; INITIALISE GLOBAL A-RATE VARIABLES
    
    kMetro metro 10; METRO AT 10Hz FOR UPDATING UI VALUES
    
; WIDGETS SECTION ***********************
    gklevel = chnget:k("output"); GET OUTPUT KNOB VALUE
    kOutputVUL = (kInputRMS + gkSynthRMSL + gkReverbRMSL); COMBINED AMPLITUDE OF ALL L OUTPUTS FOR LEFT OUTPUT VU METRE
    kOutputVUR = (kInputRMS + gkSynthRMSR + gkReverbRMSR); COMBINED AMPLITUDE OF ALL R OUTPUTS FOR RIGHT OUTPUT VU METRE
    cabbageSetValue "vu1", portk(gkAmp*5, .25), kMetro; SET VALUE OF INPUT VU METRE
    cabbageSetValue "vu2", portk(kOutputVUL*5, .25), kMetro
    cabbageSetValue "vu3", portk(kOutputVUR*5, .25), kMetro
    
    kInputGlow scale gkAmp*5, 1, 0; SCALE INPUT AMPLITUDE TO 0-1 FOR ALPHA VALUE OF INPUT GLOW
    kOutputGlow scale (gkOutL+gkOutR)*2.5, 1, 0; SCALE OUTPUT AMPLITUDE TO 0-1 FOR ALPHA VALUE OF INPUT GLOW
    
    S_InputGlow sprintfk "alpha(%f)", kInputGlow; CREATE STRING WITH ALPHA VALUE OF SCALED INPUT AMPLITUDE
    S_OutputGlow sprintfk "alpha(%f)", kOutputGlow; CREATE STRING WITH ALPHA VALUE OF SCALED OUTPUT AMPLITUDE
    cabbageSet kMetro, "knobglow1", S_InputGlow; UPDATE ALPHA (OPACITY) OF INPUT KNOB GLOW
    cabbageSet kMetro, "knobglow2", S_OutputGlow; UPDATE ALPHA (OPACITY) OF OUTPUT KNOB GLOW
    
    S_LED sprintfk "alpha(%f)", chnget:k("bypass"); CREATE STRING WITH ALPHA VALUE OF BYPASS BUTTON
    cabbageSet kMetro, "led", S_LED; UPDATE ALPHA (OPACITY) OF BYPASS LED (ALPHA IS 1 WHEN BYPASS IS ENABLED)
    
    kCrsRate chnget "crsrate"; GET VALUE OF CHORUS BUTTON
    kCrsChanged changed kCrsRate; CHECK IF CHORUS BUTTON STATE HAS CHANGED (I.E. IS CLICKED)
    
if kCrsChanged = 1 then; IF CHORUS BUTTON IS CLICKED...
    kCounter2 += 1; INCREMENT COUNTER
endif
    
if kCounter2 > 2 then; RESET COUNTER AFTER 2 CLICKS (CHORUS OPTION 1, CHORUS OPTION 2, OFF)
    kCounter2 = 0
endif
    
if kCounter2 == 1 then; IF CHORUS BUTTON IS CLICKED ONCE...
    cabbageSet kCrsChanged, "led3a1", "alpha(1)"; TURN ON LEFT LED
    cabbageSet kCrsChanged, "led3a2", "alpha(0)"; TURN OFF RIGHT LED
    gkCrs = 64; SET CHORUS VALUE TO HALF
elseif kCounter2 = 2 then; IF CHORUS BUTTON IS CLICKED TWICE
    cabbageSet kCrsChanged, "led3a1", "alpha(0)"; TURN OFF LEFT LED
    cabbageSet kCrsChanged, "led3a2", "alpha(1)"; TURN ON RIGHT LED
    gkCrs = 110; SET CHORUS VALUE TO (ALMOST) FULL
else; IF CHORUS BUTTON IS CLICKED A THIRD TIME
    cabbageSet kCrsChanged, "led3a1", "alpha(0)"; TURN OFF LEFT LED
    cabbageSet kCrsChanged, "led3a2", "alpha(0)"; TURN OFF RIGHT LED
    gkCrs = 0; SET CHORUS RATE TO ZERO
endif
    
    S_LED3b sprintfk "alpha(%f)", 1-(gkLiveMode); CREATE STRING WITH ALPHA VALUE OF LIVE MODE BUTTON
    cabbageSet kMetro, "led3b", S_LED3b; CHANGE ALPHA (OPACITY) OF LIVE MODE LED (ALPHA IS 1 WHEN LIVEMODE IS ENABLED)
    
    S_Help1 sprintfk "alpha(%f)", chnget:k("Help1"); CREATE STRING WITH ALPHA VALUE OF HELP BUTTON
    cabbageSet kMetro, "HelpOverlay1", S_Help1; UPDATE ALPHA (OPACITY) OF HELP OVERLAY (ALPHA IS 1 WHEN HELP BUTTON IS ENABLED)
    
    S_VU sprintfk "alpha(%f)", 1-(chnget:k("Help1")); CREATE STRING WITH 1 - ALPHA VALUE OF HELP BUTTON
    cabbageSet kMetro, "vu1", S_VU; UPDATE ALPHA (OPACITY) OF INPUT VU METRE (ALPHA IS 0 WHEN HELP BUTTON IS ENABLED)
    cabbageSet kMetro, "vu2", S_VU; UPDATE ALPHA (OPACITY) OF OUTPUT L VU METRE (ALPHA IS 0 WHEN HELP BUTTON IS ENABLED)
    cabbageSet kMetro, "vu3", S_VU; UPDATE ALPHA (OPACITY) OF OUTPUT R VU METRE (ALPHA IS 0 WHEN HELP BUTTON IS ENABLED)
    
    kHelp2Changed changed chnget:k("Help2"); CHECK IF ADVANCED PAGE HELP BUTTON STATE HAS CHANGED
    
if kHelp2Changed = 1 then; IF ADVANCED PAGE HELP BUTTON IS CLICKED...
    kCounter1 += 1; INCREMENT COUNTER
endif
    
if kCounter1 > 2 then; COUNTER RESETS AFTER 2 CLICKS
    kCounter1 = 0
endif
    
    ; MULTIPLE HELP OVERLAYS FOR ADVANCED PAGE USING COUNTER VALUE
if kCounter1 == 1 then; SHOW FIRST ADVANCED PAGE HELP FILE ON FIRST CLICK
    cabbageSet kMetro, "HelpOverlay2", "alpha(1)"
elseif kCounter1 = 2 then; SHOW SECOND ADVANCED PAGE HELP FILE ON SECOND CLICK
    cabbageSet kMetro, "HelpOverlay2", "alpha(0)"
    cabbageSet kMetro, "HelpOverlay3", "alpha(1)"
else; HIDE ALL ADVANCED HELP FILES ON THIRD CLICK
    cabbageSet kMetro, "HelpOverlay2", "alpha(0)"
    cabbageSet kMetro, "HelpOverlay3", "alpha(0)"
endif
    
     kKnobSlider chnget ("KnobSlider"); GET VALUE OF KNOB/SLIDER OPTION BUTTON
    
if kKnobSlider == 0 then; IF SET TO KNOB MODE, MAKE ALL KNOBS VISIBLE AND ALL SLIDERS INVISIBLE
    cabbageSet kMetro, "octave", "visible(1)"
    cabbageSet kMetro, "port", "visible(1)"
    cabbageSet kMetro, "mix", "visible(1)"
    
    cabbageSet kMetro, "octave1", "visible(0)"
    cabbageSet kMetro, "port1", "visible(0)"
    cabbageSet kMetro, "mix1", "visible(0)"
    if gkLiveMode == 1 then; IF LIVEMODE IS OFF, SHOW NOTE THRESHOLD KNOB
        cabbageSet kMetro, "threshold", "visible(1)"
        cabbageSet kMetro, "threshold1", "visible(0)"
    else; IF LIVEMODE IS ON, HIDE NOTE THRESHOLD KNOB
        cabbageSet kMetro, "threshold", "visible(0)"
        cabbageSet kMetro, "threshold1", "visible(0)"
    endif
    
    gkOctaveChoice chnget "octave"
    kPort1 chnget "port"
    kMix chnget "mix"
    kThreshold chnget "threshold"
    
    gkOctaveChoicePot chnget "octave"; LINK VALUES OF KNOBS CORRESPONDING AND SLIDERS
    kPortPot chnget "port"
    kMixPot chnget "mix"
    kThresholdPot chnget"threshold"
    
    cabbageSetValue "octave1", gkOctaveChoicePot; LINK VALUES OF KNOBS CORRESPONDING AND SLIDERS
    cabbageSetValue "port1", kPortPot
    cabbageSetValue "mix1", kMixPot
    cabbageSetValue "threshold1", kThresholdPot
    
else; IF SET TO SLIDER MODE, MAKE ALL KNOBS INVISIBLE AND ALL SLIDERS VISIBLE
    cabbageSet kMetro, "octave", "visible(0)"
    cabbageSet kMetro, "port", "visible(0)"
    cabbageSet kMetro, "mix", "visible(0)"
    
    cabbageSet kMetro, "octave1", "visible(1)"
    cabbageSet kMetro, "port1", "visible(1)"
    cabbageSet kMetro, "mix1", "visible(1)"
    if gkLiveMode == 1 then
        cabbageSet kMetro, "threshold", "visible(0)"
        cabbageSet kMetro, "threshold1", "visible(1)"
    else
        cabbageSet kMetro, "threshold", "visible(0)"
        cabbageSet kMetro, "threshold1", "visible(0)"
    endif
    
    gkOctaveChoice chnget "octave1"
    kPort1 chnget "port1"
    kMix chnget "mix1"
    kThreshold chnget "threshold1"
    
    gkOctaveChoiceSlider chnget "octave1"; LINK VALUES OF KNOBS CORRESPONDING AND SLIDERS
    kPortSlider chnget "port1"
    kMixSlider chnget "mix1"
    kThresholdSlider chnget "threshold1"
    
    cabbageSetValue "octave", gkOctaveChoiceSlider; LINK VALUES OF KNOBS CORRESPONDING AND SLIDERS
    cabbageSetValue "port", kPortSlider
    cabbageSetValue "mix ", kMixSlider
    cabbageSetValue "threshold", kThresholdSlider
endif

if chnget:k("Trigger") == 1 then; CHANGE BETWEEN MAIN PAGE AND ADVANCED PAGE
    cabbageSet kMetro, "image1", "visible", 1
    cabbageSet kMetro, "image2", "visible", 0
    else
    cabbageSet kMetro, "image1", "visible", 0
    cabbageSet kMetro, "image2", "visible", 1
endif
    
    kscale scale gkPitch, 1, 0, 990, 80; SCALE PITCH TO 0-1 FOR PY VALUE OF DISPLAY IN UI
    aPitch = kscale; CONVERT K-RATE PITCH TO A-RATE SIGNAL FOR DISPLAY
    display	aPitch, 0.01, 20; OUTPUT SCALED PITCH TO DISPLAY IN UI
    
    S_Notes[] fillarray "-", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "Bb", "B", "C"; STORE POSSIBLE NOTE NAMES IN ARRAY
    
    S_NoteNameGUI sprintfk "text(%s)", S_Notes[gkNoteName]; GET NOTE NAME AT INDEX POSITION OF ROOT NOTE NUMBER
    cabbageSet kMetro, "heading", S_NoteNameGUI; SEND NOTE NAME TO USER INTERFACE

    giOctave[] fillarray 0.25, 0.5, 1, 1.5, 2; STORE OCTAVE MULTIPLIERS IN ARRAY
    
    
; ADSR GRAPH ******************************** MODIFIED VERSION OF "GEN42.csd" - Iain McCurdy (2012)
      
    gihist    ftgen    1,0, 512, -42, 0,0, 100 ; DEFAULT WAVEFORM    

    iftlen    =    ftlen(1)        ; LENGTH OF FUNCTION TABLE

    kLevel1 chnget "envl1"; READ ADSR VALUES
    kLevel2 chnget "envl2"
    kLevel3 chnget "envl3"

    kAttack    chnget    "envt1"
    kDecay1    chnget    "envt2"
    kDecay2    chnget    "envt3"
    kRelease    chnget    "envt4"

    ktrig    changed        kLevel1, kLevel2, kLevel3, kAttack, kDecay1, kDecay2, kRelease
if ktrig==1 then; UPDATE TABLE EVERYTIME ADSR VALUE IS CHANGED
     reinit    UPDATE
endif
    UPDATE:; REGENERATE TABLE WITH UPDATED VALUES
    gihist    ftgen    1,0, iftlen, -42, 0, i(kLevel1), i(kAttack),\
                                      i(kLevel1), i(kLevel2), i(kDecay1),\
                                      i(kLevel2), i(kLevel3), i(kDecay2),\
                                      i(kLevel3), i(kLevel3), 48,\
                                      i(kLevel3), 0, i(kRelease)
    rireturn

if ktrig==1 then; IF VALUE HAS CHANGED, SEND NEW TABLE TO UI            ; 
     cabbageSet ktrig, "ADSR", "tableNumber", 1   
endif
    
    kSumTimes = kAttack + kDecay1 + kDecay2 + 48 + kRelease; TOTAL ADSR TIME INCLUDING STATIC SUSTAIN (48)

    ; MARKERS FOR END OF EACH PHASE
    kXpos1 = ((kAttack / kSumTimes) * 189); END OF ATTACK
    kXpos2 = (((kAttack + kDecay1) / kSumTimes) * 189); END OF DECAY
    kXpos3 = (((kAttack + kDecay1 + kDecay2) / kSumTimes) * 189); START OF SUSTAIN PHASE
    kXpos4 = (((kAttack + kDecay1 + kDecay2 + 48) / kSumTimes) * 189); START OF RELEASE PHASE
    
    kYpos1 = (kLevel1 / 127) * 118; NORMALISE LINE HEIGHT TO HEIGHT OF THE TABLE IN UI
    kYpos2 = (kLevel2 / 127) * 118; NORMALISE LINE HEIGHT TO HEIGHT OF THE TABLE IN UI
    kYpos3 = (kLevel3 / 127) * 118; NORMALISE LINE HEIGHT TO HEIGHT OF THE TABLE IN UI

    Sscrubber1 sprintfk "bounds(%d,%d,2,%d)", kXpos1, 120 - (kYpos1), kYpos1-2; GENERATE LINE AT CALCULATED X POSITION, Y POSITION, LINE WIDTH 2, Y HEIGHT
    Sscrubber2 sprintfk "bounds(%d,%d,2,%d)", kXpos2, 120 - (kYpos2), kYpos2-2; GENERATE LINE AT CALCULATED X POSITION, Y POSITION, LINE WIDTH 2, Y HEIGHT
    Sscrubber3 sprintfk "bounds(%d,%d,2,%d)", kXpos3, 120 - (kYpos3), kYpos3-2; GENERATE LINE AT CALCULATED X POSITION, Y POSITION, LINE WIDTH 2, Y HEIGHT
    Sscrubber5 sprintfk "bounds(%d,%d,2,%d)", kXpos4, 120 - (kYpos3), kYpos3-2; GENERATE LINE AT CALCULATED X POSITION, Y POSITION, LINE WIDTH 2, Y HEIGHT

    cabbageSet ktrig, "scrubber1", Sscrubber1; UPDATE POSITION AND HEIGHT OF LINE
    cabbageSet ktrig, "scrubber2", Sscrubber2; UPDATE POSITION AND HEIGHT OF LINE
    cabbageSet ktrig, "scrubber3", Sscrubber3; UPDATE POSITION AND HEIGHT OF LINE
    cabbageSet ktrig, "scrubber5", Sscrubber5; UPDATE POSITION AND HEIGHT OF LINE
    
    kAttackWidth  = kXpos1; DYNAMICALLY CALCULATE WIDTH OF ATTACK SECTION
    kDecayWidth   = kXpos3 - kXpos1; DYNAMICALLY CALCULATE WIDTH OF DECAY SECTION
    kSustainWidth = kXpos4 - kXpos3; DYNAMICALLY CALCULATE WIDTH OF SUSTAIN SECTION
    kReleaseWidth = 189 - kXpos4; DYNAMICALLY CALCULATE WIDTH OF RELEASE SECTION
    
    ; LABEL SECTION
    SgroupA sprintfk "bounds(%d,0,%d,145)", 0, kAttackWidth; UPDATE WIDTH OF ATTACK SECTION BOX
    SlabelA sprintfk "bounds(%d,6,10,10)", (kXpos1/2) + (4*kAttack/127) - 8; UPDATE CENTRED X POSITION OF "A" LABEL (WITH OFFSET CLOSER TO VALUE 0 TO MOVE "A" OFF SCREEN WHEN ATTACK TIME IS LOW)

    SgroupD sprintfk "bounds(%d,0,%d,145)", kXpos1, kDecayWidth; UPDATE WIDTH OF DECAY SECTION BOX
    SlabelD sprintfk "bounds(%d,6,10,10)", (kXpos1 + (kDecayWidth/2)) - 4; UPDATE CENTRED X POSITION OF "D" LABEL (CENTRED BETWEEN BOTH DECAY REGIONS)

    SgroupS sprintfk "bounds(%d,0,%d,145)", kXpos3, kSustainWidth; UPDATE WIDTH OF SUSTAIN SECTION BOX
    SlabelS sprintfk "bounds(%d,6,10,10)", (kXpos3 + (kSustainWidth/2)) - 4; UPDATE CENTRED X POSITION OF "S" LABEL

    SgroupR sprintfk "bounds(%d,0,%d,145)", kXpos4, kReleaseWidth; UPDATE WIDTH OF RELEASE SECTION BOX
    SlabelR sprintfk "bounds(%d,6,10,10)", kXpos4 + (kReleaseWidth/2) - (4*kRelease/127); UPDATE CENTRED X POSITION OF "A" LABEL (WITH OFFSET CLOSER TO VALUE 0 TO MOVE "R" OFF SCREEN WHEN RELEASE TIME IS LOW)

    cabbageSet ktrig, "attackGroup", SgroupA; SEND NEW BOUND VALUES TO UI
    cabbageSet ktrig, "attackLabel", SlabelA; SEND NEW BOUND VALUES TO UI

    cabbageSet ktrig, "decayGroup", SgroupD; SEND NEW BOUND VALUES TO UI
    cabbageSet ktrig, "decayLabel", SlabelD; SEND NEW BOUND VALUES TO UI

    cabbageSet ktrig, "sustainGroup", SgroupS; SEND NEW BOUND VALUES TO UI
    cabbageSet ktrig, "sustainLabel", SlabelS; SEND NEW BOUND VALUES TO UI

    cabbageSet ktrig, "releaseGroup", SgroupR; SEND NEW BOUND VALUES TO UI
    cabbageSet ktrig, "releaseLabel", SlabelR; SEND NEW BOUND VALUES TO UI   
    
; INPUT ********************************
    ;aInput diskin "sample3.wav", 1, -2, 1; PLAY SHORT WAV FILE TO SIMULATE LIVE INPUT (FOR DEVELOPMENT PURPOSES)
    aInput inch 1; RECEIVE AUDIO INPUT FROM CHANNEL 1
    aInput = aInput*((chnget:k("input")*2)); MULTIPLY INPUT AUDIO BY INPUT VOLUME KNOB

    ; APPLY FILTERING TO ISOLATE DESIRED FREQUENCIES OF GUITAR
    aInputLP butterlp aInput, 990; HIGH E 20th FRET IS 987.77Hz
    aInputHP butterhp aInputLP, 80; LOW E IS 82Hz
    
; INPUT TRACKING ***********************
    gkAmp rms aInputHP; TRACK AMPLITUDE OF INPUT
    
    aloud follow aInputHP, .01; TRACK AMPLITUDE OF INPUT 
    kloud = k(aloud); CONVERT FROM A-RATE TO K-RATE
    
    ktestamp = kloud - kloudprev; CALCULATE AMPLITUDE DIFFERENCE BETWEEN NOW AND 0.1 SECONDS AGO
    ktestampdel delayk ktestamp, (2048/sr); DELAY TO ALLOW PITCH TRACKING TO CATCH UP
    
; PITCH ANALYSIS *********************** 
    ifftsize = 512; PARAMETERS FOR PITCH TRACKING
    iwtype = 1

if gkAmp > 0.01 then; AVOID FRET NOISE BY ONLY TRACKING PITCH ABOVE AMPLITUDE THRESHOLD
        kfr, kamp ptrack aInputHP, 1024; ANALYSE PITCH OF INCOMING SIGNAL
        kMIDINote ftom kfr; CONVERT PITCH IN HZ TO MIDI NUMBER
        gkNoteName = (round(kMIDINote % 12)+1); CALCULATE BASE NOTE NUMBER (WITHOUT OCTAVE)
        kfr = kfr*(giOctave[gkOctaveChoice+2])
else
        gkNoteName = 0; IF INPUT AMPLITUDE IS BELOW THRESHOLD, SET NOTENAME TO "-" IN USER INTERFACE
endif 
    kPort portk kfr, kPort1; SMOOTH OUT PITCH CHANGES
if (kPort > 80 && kPort < 990) then; IF TRACKED PITCH IS WITHIN RANGE OF GUITAR NECK...
        gkPitch = kPort; UPDATE GLOBAL PITCH VARIABLE
endif
    
if (ktestampdel) > (chnget:k("threshold")) then; DETECTION THRESHOLD
        kNoteDetected = 1; SET KNOTEDETECTED TO TRUE
else
        kNoteDetected = 0; CLEAR KNOTEDETECTED
endif
    
    kloudprev = kloud; RESET KLOUD 

    kNoteOn changed kNoteDetected; DETECT CHANGES IN KNOTEDETECTED

; TRIGGER SYNTH SECTION ***********************
gkLiveMode chnget "LiveMode"; GET VALUE OF LIVEMODE BUTTON
kLiveModeChanged changed gkLiveMode; DETECT CHANGES IN LIVEMODE BUTTON
kPresetChanged changed chnget:k("PRESET"); DETECT IF PRESET HAS CHANGED

if kPresetChanged == 1 then; TURN OFF ALL INSTANCES OF SYNTH WHEN PRESET CHANGED TO AVOID UNWANTED POPS OR TAILS
    turnoff2 2, 1, 0
endif

if gkLiveMode == 1 then; IF LIVEMODE IS OFF
    cabbageSet kLiveModeChanged, "port", "alpha(0) active (0) popupText(0)"; DEACTIVATE PORT KNOB
    cabbageSet kLiveModeChanged, "port1", "alpha(0) active (0) popupText(0)"; DEACTIVATE PORT SLIDER
    cabbageSet kLiveModeChanged, "envt1", "alpha(1) active(1) popupText()"; ACTIVATE ATTACK KNOB
    cabbageSet kLiveModeChanged, "envt2", "alpha(1) active(1) popupText()"; ACTIVATE DECAY1 KNOB
    cabbageSet kLiveModeChanged, "envt3", "alpha(1) active (1) popupText()"; ACTIVATE DECAY2 KNOB
    cabbageSet kLiveModeChanged, "envt4", "alpha(1) active (1) popupText()"; ACTIVATE RELEASE KNOB
    cabbageSet kLiveModeChanged, "envl1", "alpha(1) active (1) popupText()"; ACTIVATE ATTACK LEVEL KNOB
    cabbageSet kLiveModeChanged, "envl2", "alpha(1) active (1) popupText()"; ACTIVATE DECAY MIDPOINT LEVEL KNOB
    cabbageSet kLiveModeChanged, "envl3", "alpha(1) active (1) popupText()"; ACTIVATE SUSTAIN LEVEL KNOB
    cabbageSet kLiveModeChanged, "image1", "file(mainpage1.png)"; CHANGE MAIN PAGE BACKGROUND TO THRESHOLD VERSION
    
    if kNoteOn == 1 && kNoteDetected == 1 then; TRIGGER SYNTH IF NOTE IS DETECTED
        turnoff2 2, 1, 1; TURN OFF PREVIOUS SYNTH INSTANCE TO AVOID BUILDUP
        event "i", 2, 0, -1, kfr; TRIGGER SYNTH EVENT
    endif
else; IF LIVEMODE IS ON
    cabbageSet kMetro, "port", "alpha(1) active(1) popupText()"; ACTIVATE PORT KNOB
    cabbageSet kMetro, "port1", "alpha(1) active(1) popupText()"; ACTIVATE PORT SLIDER
    cabbageSet kMetro, "envt1", "alpha(0.25) active(0) popupText(Disabled in Live Mode)"; DEACTIVATE ATTACK KNOB
    cabbageSet kMetro, "envt2", "alpha(0.25) active(0) popupText(Disabled in Live Mode)"; DEACTIVATE DECAY1 KNOB
    cabbageSet kMetro, "envt3", "alpha(0.25) active(0) popupText(Disabled in Live Mode)"; DEACTIVATE DECAY2 KNOB
    cabbageSet kMetro, "envt4", "alpha(0.25) active(0) popupText(Disabled in Live Mode)"; DEACTIVATE RELEASE KNOB
    cabbageSet kMetro, "envl1", "alpha(0.25) active(0) popupText(Disabled in Live Mode)"; DEACTIVATE ATTACK LEVEL KNOB
    cabbageSet kMetro, "envl2", "alpha(0.25) active(0) popupText(Disabled in Live Mode)"; DEACTIVATE DECAY MIDPOINT LEVEL KNOB
    cabbageSet kMetro, "envl3", "alpha(0.25) active(0) popupText(Disabled in Live Mode)"; DEACTIVATE SUSTAIN LEVEL KNOB
    cabbageSet kMetro, "image1", "file(mainpage.png)"; CHANGE MAIN PAGE BACKGROUND TO PORT VERSION
    
    if gkLiveMode == 0 && (kLiveModeChanged == 1 || kPresetChanged == 1) then; TURN ON SYNTH INSTRUMENT INDEFINITELY
    turnoff2 2, 1, 1; TURN OFF PREVIOUS SYNTH INSTANCE TO AVOID BUILDUP
        event"i", 2, 0, -1; TRIGGER SYNTH EVENT
    endif
endif 

    gkMix1 = (kMix * chnget:k("bypass")); GET MIX KNOB VALUE (AND MULTIPLY BY BYPASS BUTTON VALUE 0 OR 1 TO BYPASS EFFECT)
    gkRevMix chnget "revmix"; GET REVERB MIX KNOB VALUE
    
    outs (((aInput*0.5)*(1-gkMix1))*gklevel)*(1-gkRevMix), (((aInput*0.5)*(1-gkMix1))*gklevel)*(1-gkRevMix); OUTPUT INPUT MULTIPLIED BY INPUT LEVEL VALUE, AT REVERB MIX RATIO
    
    kInputRMS rms (((aInput*0.5)*(1-gkMix1))*gklevel)*(1-gkRevMix); STORE AMPLITUDE OF DRY SECTION TO BE REFERENCED BY OUTPUT VU METRE

    gaReverbL += (((aInput*0.5)*(1-gkMix1))*(gkRevMix)); ADD INPUT TO GLOBAL REVERB L AT CORRECT MIX RATIO
    gaReverbR += (((aInput*0.5)*(1-gkMix1))*(gkRevMix)); ADD INPUT TO GLOBAL REVERB R AT CORRECT MIX RATIO
endin

instr 2; JUNO SYNTH INSTRUMENT - MODIFIED VERSION OF "csoundj2 - Mike Rodd":https://github.com/mikerodd/csoundj2
  
; GET VALUE OF UI PARAMETERS
iLfoRate        chnget "lforate"  
iLfoDely        chnget "lfodely"  
kPulse          chnget "pulse"
kSawtooth       chnget "sawtooth"
kSub            chnget "sub"
kSubLvl         chnget "sublevl" 
kpwpwm          chnget "pwpwm"
kNoisLvl        chnget "noislvl"
kPwmRate        chnget "pwmrate"
kDcoRng         chnget "dcorng"
kDcoLfo         chnget "dcolfo"
kDcoEnvd        chnget "dcoenvd"
kDcoEnv         chnget "dcoenv"    
kHpfFreq        chnget "hpffreq" 
kVcfFreq        chnget "vcffreq" 
kVcfReso        chnget "vcfreso" 
kVcfEnvd        chnget "vcfenvd" 
kVcfEnv         chnget "vcfenv" 
kVcfLfo         chnget "vcflfo" 
kVcaEnvd        chnget "vcaenvd" 
kVcaEnv         chnget "vcaenv" 
iEnvT1          chnget "envt1"
iEnvT2          chnget "envt2"
iEnvT3          chnget "envt3"
iEnvT4          chnget "envt4"
iEnvL1          chnget "envl1"
iEnvL2          chnget "envl2"
iEnvL3          chnget "envl3"
kEnvL3          chnget "envl3"
giAmp          = 0.5

if gkLiveMode == 1 then; IF LIVEMODE IS OFF, CONSTANT NOTE AMPLITUDE OF 0.5
    kSynthAmp = 0.5
else; IF LIVEMODE IS ON, SYNTH AMPLITUDE IS EQUAL TO INPUT AMPLITUDE SCALED TO 0-1
    kSynthAmp = gkAmp
endif


;ENVELOPES
if gkLiveMode == 1 then; IF LIVEMODE IS OFF, FULL ADSR
    kEnvL linsegr  0, gienvt1[iEnvT1-1], iEnvL1/127, gienvt1[iEnvT2-1], iEnvL2/127, gienvt3[iEnvT3], iEnvL3/127, gienvt4[iEnvT4],0; ADSR VALUES
    kEnvVCF linsegr  0, gienvt1[iEnvT1-1], iEnvL1, gienvt1[iEnvT2-1], iEnvL2 , gienvt3[iEnvT3], iEnvL3, gienvt4[iEnvT4],0; ADSR VALUES
else; IF LIVEMODE IS ON, ADS WHEN FIRST INITIALISED, NO RELEASE
    kEnvL linsegr  0, gienvt1[iEnvT1-1], iEnvL1/127, gienvt1[iEnvT2-1], iEnvL2/127, gienvt3[iEnvT3], iEnvL3/127; ADS, NO RELEASE
    kEnvVCF linsegr  0, gienvt1[iEnvT1-1], iEnvL1, gienvt1[iEnvT2-1], iEnvL2 , gienvt3[iEnvT3], iEnvL3/127;ADS, NO RELEASE
endif
    kEnvG  linsegr 0, 0.0001, 1,0,0
   

; LFO BLOCK
if (iLfoDely > 10) then 
    itmp = 1 
else 
    itmp = 0 
endif 
    kLfo            linseg 0,gilfodels[iLfoDely] , 0,itmp ,1;DELAY FOR LFO1 
    aLFO            lfo kLfo, gkLfoRate[iLfoRate], 1;RATE FOR LFO



if (kPwmRate != 0) then; ONLY AFFECT IF PULSE WIDTH MODULATION RATE IS NOT 0
    kLfoPw          lfo kpwpwm/2, gkPwmRate[kPwmRate], 1;RATE FOR LFO PWM
    kLfoPw          = kLfoPw - kpwpwm/2
else 
    kLfoPw = kpwpwm; NO LFO PWM
endif 



; DCO BLOCK
if gkLiveMode == 1 then; IF LIVEMODE IS OFF, CONSTANT NOTE PITCH
    kNote           = p4 * (8  / (2^(kDcoRng + 1)));BASE NOTE CALCULATION : (NOTE * OCTAVE CHOICE) * DCORNG CORRECTION
else; IF LIVEMODE IS ON, UPDATE NOTE PITCH IN REALTIME
    kNote           = gkPitch * (8  / (2^(kDcoRng + 1)));BASE NOTE CALCULATION : (NOTE * OCTAVE CHOICE) * DCORNG CORRECTION
endif
    kNote           = kNote  +  aLFO * (kNote * gilfovals[kDcoLfo] / 2); NOTE + LFO OSCILLATION
    
if (kDcoEnvd != 0) then; IF DCOENVD IS NOT 0...
    if (kDcoEnvd >= 64) then; IF DCOENVD IS GREATER THAN OR EQUAL TO 64...
        if (kDcoEnv == 1) then; NORMAL
            kNote           = (kNote/130.9) * pow(10,gkDcoEnvb[kDcoEnvd] + gkDcoEnva[kDcoEnvd]* ( kEnvVCF  - 10) / 10) 
        elseif (kDcoEnv == 2) then; INVERTED  
            kNote           = 2 * kNote - (kNote/130.9) * pow(10,gkDcoEnvb[kDcoEnvd] + gkDcoEnva[kDcoEnvd]* ( kEnvVCF  - 10) / 10)
        elseif (kDcoEnv == 3) then; D-NORMAL 
            kNote           = (kNote/130.9) * pow(10,gkDcoEnvb[kDcoEnvd] + gkDcoEnva[kDcoEnvd]* ( kEnvVCF  - 10) / 10) 
        elseif (kDcoEnv == 4) then; D-INVERTED
            kNote           = 2 * kNote - (kNote/130.9) * pow(10,gkDcoEnvb[kDcoEnvd] + gkDcoEnva[kDcoEnvd]* ( kEnvVCF  - 10) / 10) 
        endif
    endif
endif


; SQUARE OSCILLATOR
if (kPulse == 0) then 
    aOsc1 = 0
else
    ; WAVEFORM OPTIONS
    aOscTri vco2 kSynthAmp, kNote,0,0,0,0.2
    if (kPulse == 1) then
        aOsc1  vco2  kSynthAmp, kNote,10,0,0,0.45; SQUARE 
    elseif (kPulse == 2) then 
        aOsc1   vco2  kSynthAmp, kNote,2,0.75
    elseif (kPulse == 3) then
        aOsc1   vco2  kSynthAmp, kNote ,2,  0.5 - (kLfoPw)*0.49/127  
        aOsc1 = aOsc1
    endif 
    aOsc1 =  aOsc1 *(aOscTri + 3)/4
endif 

; SAWTOOTH OSCILLATOR
if (kSawtooth == 0) then 
    aOsc2  = 0
else
    aSaw1 vco2  kSynthAmp, kNote ,0
    
    ; WAVEFORM OPTIONS
    if (kSawtooth == 1) then
        aOsc2           = - aSaw1  
    elseif (kSawtooth  == 2) then
        aSquare1x2      vco2  kSynthAmp, kNote*2,10; NOTE*2 
        aSquare1x201    =   (-aSquare1x2  + 1) / 2; GATE FOR SAWTOOTH WAVES
        aOsc2           = (-aSaw1+1) * aSquare1x201 - 1; SAW02   

    elseif (kSawtooth == 3) then
        asquarepwm      vco2  kSynthAmp, kNote * 2, 2 ,  0.5 - (kLfoPw)*0.49/127  
        aSquare1x201    =   (-asquarepwm + 1) / 2
        aSaw1           vco2  kSynthAmp, kNote ,0
        aOsc2           = (-aSaw1 + 1) * (aSquare1x201) - 1; SAW03
    
    elseif (kSawtooth == 4) then
        aSaw4           vco2  kSynthAmp, kNote ,0
        asquare         vco2  kSynthAmp, kNote * 8, 10, 0.5, 0.5
        aSquare201      =   (asquare  + 1) / 2; GATE FOR SAWTOOTH WAVES
        aOsc2           = (-aSaw4 + 1) * (aSquare201)- 1;SAW04

    elseif (kSawtooth == 5) then
        aSaw4           vco2  kSynthAmp, kNote ,0
        aSquared2       vco2  kSynthAmp, kNote*2,10; NOTE*2   
        asquared8       vco2  kSynthAmp, kNote* 8, 10, 0.5, 0.5; NOTE*8
        aSquare1x201    =   (- aSquared2     + 1) / 2; GATE FOR SAWTOOTH WAVES 
        aSquare201      =   (asquared8 + 1) / 2; GATE FOR SAWTOOTH WAVES 
        aOsc2           = (-aSaw4 + 1) * (aSquare201) * aSquare1x201 - 1; SAW04
    endif 
endif

; SUB OSCILLATOR
if (kSubLvl == 0) then; BYPASS SUB IF SUB LEVEL IS SET TO 0   
    kSubLevel = 0
else
    kSubLevel = (2^(kSubLvl)) / 8; SUB IS SET TO NOTE IN FIRST OCTAVE
endif

; WAVEFORM OPTIONS
if (kSub == 0) then 
    aOsc3   vco2,  kSynthAmp * kSubLevel, kNote/2,10

elseif (kSub == 1) then
    aOsc3   vco2  kSynthAmp * kSubLevel, kNote/2 ,2,0.75

elseif (kSub == 2) then
   aSub1 vco2  kSynthAmp* kSubLevel, kNote*2 ,10
   aSub2 vco2  kSynthAmp* kSubLevel, kNote/2 ,10
   aOsc3   =  (- aSub1 + 1) * (-aSub2 + 1) / 2 - 1

elseif (kSub == 3) then
   aSub1 vco2  kSynthAmp* kSubLevel, kNote*4 ,10
   aSub2 vco2  kSynthAmp* kSubLevel, kNote/2 ,10
   aOsc3   =  (- aSub1 + 1) * (-aSub2 + 1) / 2 - 1

elseif (kSub == 4) then
    aOsc3   vco2,  kSynthAmp * kSubLevel, kNote/4,10

elseif (kSub == 5) then
    aOsc3   vco2  kSynthAmp * kSubLevel, kNote/4 ,2,0.75

endif 


; NOISE GENERATOR
if (kNoisLvl == 0) then; BYPASS NOISE IF LEVEL IS SET TO 0  
    kNoisLvl  = 0
else
    kNoisLvl  = (2^(kNoisLvl)) / 8; NOISE IS SET TO NOTE IN FIRST OCTAVE
endif
    aOsc4   noise kSynthAmp * kNoisLvl / 3, -0.9; GENERATE NOISE


; OUTPUT VCO BLOCK
    aOutVcoblock = aOsc1 * giAmp + aOsc2 * giAmp + aOsc3 * giAmp + aOsc4 * giAmp


; HPF BLOCK
if (kHpfFreq == 0) then
    aOutHPFBlock        mvclpf1 aOutVcoblock ,8000,0; LOWPASS AT 8000Hz IF HPF LEVEL IS 0
elseif (kHpfFreq == 1) then
    aOutHPFBlock        = aOutVcoblock; BYPASS HIGHPASS FILTER IF LEVEL IS 1     
elseif (kHpfFreq == 2) then
    aOutHPFBlock        mvchpf aOutVcoblock ,312; HIGHPASS AT 312Hz IF LEVEL IS 2
elseif (kHpfFreq == 3) then
    aOutHPFBlock        mvchpf aOutVcoblock ,1000; HIGHPASS AT 1000Hz IF LEVEL IS 3
endif


; VCA VCF BLOCK (DISABLED IN UI)
if (kVcaEnv == 1) then
    kEnv = kEnvL*2; NORMAL
elseif (kVcaEnv == 2) then
    kEnv = kEnvG; GT
endif

if (kVcfEnv == 1) then; NORMAL
    aOutVCFBlock moogvcf aOutHPFBlock, (1 + aLFO * kVcfLfo/127  ) * givcffreq[min(kVcfFreq + kVcfEnvd * kEnvVCF / 256, 127)], kVcfReso/153
elseif (kVcfEnv == 2) then; INVERTED
    aOutVCFBlock moogvcf aOutHPFBlock, (1 + aLFO * kVcfLfo/127  ) * givcffreq[min(kVcfFreq - kVcfEnvd * kEnvVCF / 256, 127)], kVcfReso/153
elseif (kVcfEnv == 3) then; D-NORM
    aOutVCFBlock moogvcf aOutHPFBlock, (1 + aLFO * kVcfLfo/127  ) * givcffreq[min(kVcfFreq + kVcfEnvd * kEnvVCF / 256, 127)], kVcfReso/153
elseif (kVcfEnv == 4) then; DYN
    aOutVCFBlock moogvcf aOutHPFBlock, (1 + aLFO * kVcfLfo/127  ) * givcffreq[kVcfFreq], kVcfReso/153
endif


;ADJUSTMENT FILTER
aoutPostFilter butterlp aOutVCFBlock , 9220; LOW PASS OUTPUT AT 9220Hz USING SECOND-ORDER LOWPASS BUTTERWORTH FILTER


; OUTPUT
if (gkCrs != 0) then; ONLY RUN CHORUS CODE IF CHORUS SLIDER IS NOT ZERO I.E. CHORUS IS ON  
    krate = gkCrsRate[gkCrs]; GET MEASURED JUNO CHORUS RATE FROM CHORUS ARRAY
    aoffset = 0
    ktrem	rspline	0,-1,0.1,0.5; GENERATE RANDOM SPLINE CURVE FOR MORE NATURAL MODULATION
    ktrem	pow	2,ktrem; MULTIPLY KTREM TO 62 TO TRANSFORM POSITIVE AND NEGATIVE SIGNAL 50 0.5-1 FOR SUBTLER OSCILLATION
    
    aoutSynthLpre,aoutSynthRpre 	StChorus	aoutPostFilter  ,aoutPostFilter  , gkCrsRate[gkCrs], ktrem/2	, aoffset, 0.5, 0.5; APPLY CHORUS UDO BY IAIN MCCURDY
    aoutSynthL = aoutSynthLpre*kEnv; APPLY ADSR ENVELOPE TO LEFT OUTPUT
    aoutSynthR = aoutSynthLpre*kEnv; APPLY ADSR ENVELOPE TO RIGHT OUTPUT
else
    aoutSynthL = aoutPostFilter*kEnv; BYPASS CHORUS OPCODE IF CHORUS SLIDER IS 0
    aoutSynthR = aoutPostFilter*kEnv; BYPASS CHORUS OPCODE IF CHORUS SLIDER IS 0
endif

    outs ((aoutSynthL*gkMix1)*gklevel)*(1-gkRevMix), ((aoutSynthR*gkMix1)*gklevel)*(1-gkRevMix); OUTPUT SYNTH OUTPUT AT MIX RATIO, MULTIPLIED BY OUTPUT LEVEL VALUE, AT REVERB MIX RATIO
    
    gkSynthRMSL rms ((aoutSynthL*gkMix1)*gklevel)*(1-gkRevMix); STORE AMPLITUDE OF SYNTH L SECTION TO BE REFERENCED BY OUTPUT VU METRE
    gkSynthRMSR rms ((aoutSynthR*gkMix1)*gklevel)*(1-gkRevMix); STORE AMPLITUDE OF SYNTH R SECTION TO BE REFERENCED BY OUTPUT VU METRE

    gaReverbL += ((aoutSynthL*(gkMix1))*(gkRevMix)); ADD SYNTH L TO GLOBAL REVERB L AT REVERB MIX RATIO
    gaReverbR += ((aoutSynthR*(gkMix1))*(gkRevMix)); ADD SYNTH R TO GLOBAL REVERB R AT REVERB MIX RATIO

endin


instr 3; REVERB UNIT

    aOutL, aOutR reverbsc gaReverbL, gaReverbR, chnget:k("revfeedback"), chnget:k("revcutoff"); APPLY REVERB TO GLOBAL REVERB SEND USING FEEDBACK KNOB AND CUTOFF KNOB VALUES
    outs aOutL*gklevel, aOutR*gklevel; OUTPUT REVERB AT OUTPUT KNOB VALUE
    
    gkReverbRMSL rms aOutL*gklevel; STORE AMPLITUDE OF REVERB L SECTION TO BE REFERENCED BY OUTPUT VU METRE
    gkReverbRMSR rms aOutR*gklevel; STORE AMPLITUDE OF REVERB L SECTION TO BE REFERENCED BY OUTPUT VU METRE

endin

instr 101; CLEAR GLOBALS

    clear gaReverbL, gaReverbR; CLEAR GLOBAL REVERB SEND TO AVOID BUILDUP

endin
  
</CsInstruments>
<CsScore>
f0 z
i1 0 z; MAIN INSTRUMENT RUNS FOR APPROXIMATELY 7000 YEARS
i3 0 z; REVERB UNIT RUNS FOR APPROXIMATELY 7000 YEARS
i101 0 z; GLOBAL AUDIO CLEARER RUNS FOR APPROXIMATELY 7000 YEARS
</CsScore>
</CsoundSynthesizer>