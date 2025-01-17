# Audio Signal Recording and Comparison
This MATLAB project showcases the process of recording, saving, and analyzing audio signals. It also compares signals from different sources to understand signal consistency and quality.

## Features
- **Record Audio:** Capture audio input from a microphone in real-time.
- **Save and Playback:** Save the recorded signal as a `.wav` file and playback for verification.
- **Load External Signal:** Import and process an audio signal recorded using an external device.
- **Signal Comparison:** Compare the original and external signals visually and analytically.

## Prerequisites
- MATLAB installed on your system.
- A working microphone for recording audio.

## Usage
1. **Run the Script:**
   - Start with `Part 1` to record and save your voice signal.
   - Proceed to `Part 2` to load the external audio and compare signals.
2. **External Recording:**
   - Ensure the external recording is saved as `external_recorded.wav` in the working directory.
3. **Output:**
   - Visualize the comparison of the two signals using generated plots.

## How It Works
1. **Recording:**
   - Uses MATLAB's `audiorecorder` function to capture audio.
   - Normalizes the audio for consistent signal amplitude.
2. **Comparison:**
   - Compares the recorded signal with an external device's audio.
   - Checks for sampling rate consistency.
   - Plots the two signals on the same graph for visual inspection.

## Example Output
- **Plot:** Displays the original and external signals with distinct colors and legends.
- **WAV File:** Saves the recorded signal as `original_voice.wav`.

## Potential Applications
- Audio signal processing education.
- Testing audio equipment quality.
- Signal consistency analysis.

## File Structure
