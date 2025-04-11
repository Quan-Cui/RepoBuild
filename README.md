# RepoBuild

## 📦 How to Install This Package

You can install RepoBuild directly from GitHub using the devtools package:

```         
devtools::install_github("Quan-Cui/RepoBuild")
```

## 📁 About RepoBuild

RepoBuild is a simple R package that helps you quickly set up a standardized project folder structure.

### 🔧 What It Does

The function `RepoBuild("path/to/RepoFolder")` will create the following structure in the specified folder:

RepoFolder/\
├── RepoFolder.Rproj \# RStudio project file\
├── R/ \# R scripts\
├── data/ \# Raw or cleaned data\
├── input/ \# Input files (e.g., CSVs, Excel)\
├── output/ \# Output folder\
│ ├── figures/ \# Figures and plots\
│ └── tables/ \# Exported tables\
└── instructions/ \# Notes or instructions

### .gitignore Initialization

The function also creates a .gitignore file with the following default content:

.Rproj.user\
.Rhistory\
\*log\*

You can modify this file as needed for your project.

> Note: Git does not track empty folders by default, so folders will only be included once they contain files.
