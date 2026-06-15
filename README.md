# onEyeAirpuff

Lookup on-eye air puff pressure (mmHg) from time after puff onset (ms) using
split monotonic PCHIP interpolation on a smoothed digitized clinical curve.

## Install

```r
install.packages("pak")
pak::pak("GulumimiRen/onEyeAirpuff")
```

From the package directory:

```r
install.packages(".", repos = NULL, type = "source")
```

### Install from release tarball

Download [onEyeAirpuff_0.1.0.tar.gz](https://github.com/GulumimiRen/onEyeAirpuff/releases/download/v0.1.0/onEyeAirpuff_0.1.0.tar.gz)
from the [v0.1.0 release](https://github.com/GulumimiRen/onEyeAirpuff/releases/tag/v0.1.0)
(Assets on that page). The file is not stored in the git repository.

With **pak** (local path or release URL):

```r
pak::pak("path/to/onEyeAirpuff_0.1.0.tar.gz")
```

```r
pak::pak("https://github.com/GulumimiRen/onEyeAirpuff/releases/download/v0.1.0/onEyeAirpuff_0.1.0.tar.gz")
```

With base R:

```r
install.packages("path/to/onEyeAirpuff_0.1.0.tar.gz", repos = NULL, type = "source")
```



## Usage

```r
library(onEyeAirpuff)

# pipe-friendly
17.5 |> p_oneye()

# vectorized
p_oneye(c(7.5, 17.5, 22))

# column-wise with dplyr
library(dplyr)
dt <- tibble(t_ms = c(8, 15, 20))
dt <- dt |> mutate(P = p_oneye(t_ms))
```

Built-in data: `on_eye_digitized_smooth` — dataset columns remain `t_ms` and `P_mmHg`; assign lookup results to `P` as above.

## Inputs

| Parameter | Description                    | Unit |
|-----------|--------------------------------|------|
| `t`       | Time after air puff onset      | ms   |

## Outputs

| Parameter | Description                                      | Unit  |
|-----------|--------------------------------------------------|-------|
| `P`       | On-eye air puff pressure at time `t`             | mmHg  |

Support window is 5–26 ms; out-of-range or non-finite times return 0.

## Reference

The bundled `on_eye_digitized_smooth` table was digitized from the published
**on-eye** corneal apex pressure waveform (Figure 2b, “On eye” curve) in:

Joda AAM, Shervin MMS, Kook D, Elsheikh A. Development and validation of a
correction equation for Corvis tonometry. *Comput Methods Biomech Biomed Engin.*
2016;19(9):943–953. https://doi.org/10.1080/10255842.2015.1077515
