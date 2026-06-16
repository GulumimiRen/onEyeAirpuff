# onEyeAirpuff

Lookup corneal air puff pressure (mmHg) from time after puff onset (ms) using
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

Download [onEyeAirpuff_0.2.0.tar.gz](https://github.com/GulumimiRen/onEyeAirpuff/releases/download/v0.2.0/onEyeAirpuff_0.2.0.tar.gz)
from the [v0.2.0 release](https://github.com/GulumimiRen/onEyeAirpuff/releases/tag/v0.2.0)
(Assets on that page). The file is not stored in the git repository.

With **pak** (local path or release URL):

```r
pak::pak("path/to/onEyeAirpuff_0.2.0.tar.gz")
```

```r
pak::pak("https://github.com/GulumimiRen/onEyeAirpuff/releases/download/v0.2.0/onEyeAirpuff_0.2.0.tar.gz")
```

With base R:

```r
install.packages("path/to/onEyeAirpuff_0.2.0.tar.gz", repos = NULL, type = "source")
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
| `P`       | Corneal air puff pressure at time `t`            | mmHg  |

Support window is 0-30 ms; out-of-range or non-finite times return 0.

## References

Maklad O, Eliasy A, Chen K-J, Theofilis V, Elsheikh A. Simulation of Air Puff
Tonometry Test Using Arbitrary Lagrangian-Eulerian (ALE) Deforming Mesh for
Corneal Material Characterisation. *International Journal of Environmental
Research and Public Health.* 2020;17(1):54.
https://doi.org/10.3390/ijerph17010054

Eliasy A, Lopes BT, Wang J, Abass A, Vinciguerra R, Vinciguerra P, Bao F-J,
Elsheikh A. Introduction and Clinical Validation of an Updated Biomechanically
Corrected Intraocular Pressure bIOP (v2). *Current Eye Research.*
2023;48(4):382-391. https://doi.org/10.1080/02713683.2022.2162087

Joda AAM, Shervin MMS, Kook D, Elsheikh A. Development and validation of a
correction equation for Corvis tonometry. *Computer Methods in Biomechanics and
Biomedical Engineering.* 2016;19(9):943-953.
https://doi.org/10.1080/10255842.2015.1077515
