# bagsInstaller

`bagsInstaller` is a lightweight R package designed to help quickly set up all dependencies required for running BAGS.  
It installs CRAN packages, archived packages, checks for Rtools, and provides helper commands to launch BAGS with a single line.

---

## Features

- Automatically installs required CRAN packages
- Installs archived packages (seqRFLP, worms, bold)
- Checks for Rtools before compiling packages from source
- Provides helper functions to run the BAGS app and view help

---

#  Installation Options

You can install this package in two ways:

---

## Option A — Install directly from GitHub (recommended)

First install `devtools` (only needed once):

```r
install.packages("devtools")
```

Then install the package:

```r
devtools::install_github("five0hfive/bagsInstaller")
```
---

## Option B — Install from a ZIP file

1. Download the project as a `.zip` file from GitHub
2. Install it manually in R:

```r
install.packages("C:/path/to/bagsInstaller.zip", repos = NULL, type = "source")
```

---

#  Usage

### Install all required dependencies
```r
install_bags_dependencies()
```

### Run BAGS
```r
run_bags()
```

### Show available commands
```r
bagshelp()
```

---

# 🧩 Available Functions

| Function | Description |
|---------|-------------|
| `install_bags_dependencies()` | Installs all CRAN + archived packages needed for BAGS. |
| `run_bags()` | Launches the BAGS Shiny application. |
| `bags_help()` | Lists all available helper commands from this package. |
