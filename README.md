
<!--
Copyright 2022 Province of British Columbia
&#10;Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
&#10;http://www.apache.org/licenses/LICENSE-2.0
&#10;Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and limitations under the License.
-->

# PEMr

<!-- badges: start -->

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![img](https://img.shields.io/badge/Lifecycle-Experimental-339999)](https://github.com/bcgov/repomountie/blob/master/doc/lifecycle-badges.md)

[![R-CMD-check](https://github.com/ninoxconsulting/PEMr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ninoxconsulting/PEMr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## An R package to support Machine Learning Predictive Ecosystem Mapping (PEM)

This package comprises four modules to develop Predictive Ecosystem
Mapping within British Columbia, using a machine-learning and data
driven approach. These include:

- `PEMprepr` : functions to prepare base data
- `PEMsamplr` : functions to create field sampling plans and format
  field data for modelling
- `PEMmodelr` : functions to optimise and generate machine learning
  models, and evaluate model accuracy statistics
- `PEMmapr`: functions to generate mapping products map production

The development of this methodology is currently in experimental phase
and is under rapid development.

Predictive Ecosystem mapping in British Columbia is based on the
[Biogeoclimatic Ecosystem Classification
(BEC)](https://www.for.gov.bc.ca/hre/becweb/) system.

The broader **Predictive Ecosystem Mapping Methods Development project**
is a collaboration of many partners including BC Ministry of Forests, BC
Ministry of Lands, Water, and Resource Stewardship, BC Ministry of
Environment, University of British Columbia, University of Northern
British Columbia, Dalhousie University, Aleza Lake Research Forest,
Thompson Rivers University, and OpenGeoHub.

### Installation

You can install `PEMr`development version from GitHub, using the
[remotes](https://cran.r-project.org/package=remotes) package:

``` r
install.packages("remotes")
remotes::install_github("ninoxconsulting/PEMr")
library(PEMr)
```

### Vignettes

- [PEMprepr](https://github.com/ninoxconsulting/PEMprepr/blob/master/vignettes/PEMprepr.Rmd)
- How to prepare base data from ML-PEM mapping
- How to develop a sample plan (road)
- How to develop a sample plan (helicopter)
- How to process field collected data
- How to optimise models

### Project Status

This project is currently under rapid development. If you are interested
in the work, please contact Genevieve Perkins
(<genevieve.perkins@gov.bc.ca>)

### Getting Help or Reporting an Issue

To report bugs/issues/feature requests, please file an
[issue](https://github.com/ninoxconsulting/PEMr/issues/).

### How to Contribute

If you would like to contribute to the package, please see our
[CONTRIBUTING](CONTRIBUTING.md) guidelines.

Please note that this project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree
to abide by its terms.

### Citation

### License

    Copyright 2022 Province of British Columbia

    Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and limitations under the License.

------------------------------------------------------------------------

*This project was created using the
[bcgovr](https://github.com/bcgov/bcgovr) package.*
