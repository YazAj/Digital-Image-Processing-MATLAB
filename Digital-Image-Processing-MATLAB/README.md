# Digital Image Processing in MATLAB

A MATLAB project demonstrating common **digital image processing** techniques, including intensity transformations, noise generation and filtering, thresholding, and basic morphological operations.

## Features

### Intensity Transformations
- Negative transformation
- Log transformation
- Gamma (power-law) transformation
- Contrast stretching
- Piecewise-linear transformation

### Noise and Spatial Filtering
- Gaussian noise
- Salt & pepper noise
- Average (box) filtering
- Arithmetic mean filtering
- Harmonic mean filtering
- Median filtering
- Min and max filtering

### Segmentation and Morphology
- Grayscale conversion
- Otsu-based thresholding with an adjusted threshold
- Erosion
- Boundary extraction
- Dilation / boundary thickening

## Repository Contents

| File | Description |
|---|---|
| `Contrast_Stretching.m` | Min-max contrast stretching |
| `Gamma.m` | Gamma / power-law transformation |
| `Log.m` | Logarithmic intensity transformation |
| `Negative_Transformation.m` | Image negative transformation |
| `Piecewise_Linear.m` | Piecewise-linear intensity transformation |
| `GaussianNoise.m` | Gaussian noise and smoothing/filter comparisons |
| `SaltPepperNoise.m` | Salt & pepper noise with several spatial filters |
| `project_Part3.m` | Thresholding, erosion, boundary extraction, and dilation |
| `Thresholding.m` | Placeholder file from the original project (currently empty) |
| `ts1.jpg`, `ts10.jpg`, `ttrrr.png` | Input images used by the scripts |
| `results/` | Saved result images from the project |
| `docs/` | Project documents, presentation, and supporting notes |

## Requirements

- MATLAB
- Image Processing Toolbox

The scripts use functions such as `rgb2gray`, `imnoise`, `imhist`, `medfilt2`, `ordfilt2`, `graythresh`, `imbinarize`, `strel`, `imerode`, and `imdilate`.

## How to Run

1. Clone or download this repository.
2. Open the repository folder in MATLAB.
3. Make sure the repository root is MATLAB's **Current Folder**.
4. Run any script, for example:

```matlab
Gamma
```

or:

```matlab
GaussianNoise
```

The input images are kept in the repository root so the original relative file paths continue to work.

## Notes

- `Thresholding.m` is empty in the original submitted project; thresholding and morphology are implemented in `project_Part3.m`.
- Duplicate copies of `GaussianNoise.m` and `SaltPepperNoise.m` that were inside the original `project_Part2` folder were not duplicated here. The root versions contain the same project logic.
- Existing output images were organized under `results/` for easier browsing.

## Project Purpose

This repository was created as an academic Digital Image Processing project to demonstrate fundamental image enhancement, restoration, filtering, segmentation, and morphology techniques using MATLAB.
