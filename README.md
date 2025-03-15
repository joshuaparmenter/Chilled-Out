# Chilled Out

Welcome to the repository for our Godot game Chilled Out! This README provides important information about the project's structure, including the branching and commit strategy, as well as other key details.

![alt text](https://github.com/joshuaparmenter/Chilled-Out/blob/setup/DALL%C2%B7E%202025-03-08%2018.44.34%20-%20A%20logo%20for%20a%20cyberpunk%20pixel%20art%20dungeon%20crawler%20game%2C%20incorporating%20USB%20ports%20and%20wires.%20The%20design%20should%20have%20a%20futuristic%20and%20gritty%20cyberpunk%20aes.webp)

## Table of Contents

1. [Project Overview](#project-overview)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Branching and Commit Strategy](#git-flow-branching-and-commit-strategy)
5. [Contributing](#contributing)
6. [License](#license)
7. [Contact](#contact)

---

## Project Overview

> **Provide a brief description of your game here**  
> This section can include details like the genre of the game, its mechanics, and the main objective.

---

## Installation

> **Instructions on how to set up and run the project locally.**  
> Include steps for dependencies, setup, and running the game on various platforms.

---

## Usage

> **How to use the game**  
> Provide details on how to interact with the game, any configuration options, or how to get started playing.

---

## Git Flow Branching and Commit Strategy

This section outlines the branching and commit strategy used for the Godot game development project. We follow the Git Flow model to ensure organized, efficient, and structured version control.

### 1. **Main/Master Branch** (`main` / `master`)
- **Purpose**: This branch always holds the production-ready code.
- **Content**: Only code that is thoroughly tested, stable, and ready for deployment should be merged into this branch.
- **Release Process**: A release is tagged when merging from `release` or `hotfix` branches.

### 2. **Develop Branch** (`develop`)
- **Purpose**: This is the integration branch for all feature development.
- **Content**: New features, improvements, and bug fixes are merged here. It contains the latest changes that are ready for testing before they are released.
- **Merging Strategy**: Feature branches should always be merged into `develop`. Release branches and hotfixes are also merged back into `develop`.

### 3. **Feature Branches** (`feature/xyz`)
- **Purpose**: These branches are used for developing new features.
- **Creation**: A new feature branch is created from `develop` when starting a new feature.
- **Naming Convention**: `feature/xyz` (replace `xyz` with a description of the feature).
- **Merging Strategy**: Once a feature is complete and tested, it is merged back into `develop`.

### 4. **Release Branches** (`release/x.y.z`)
- **Purpose**: These branches are created to prepare for a new release. They are used for final testing and bug fixing before the code is merged into the `main` branch.
- **Creation**: A release branch is created from `develop` when the code is feature complete and ready for final testing.
- **Naming Convention**: `release/x.y.z` (replace `x.y.z` with the version number of the release).
- **Merging Strategy**: After final testing, the release branch is merged into both `main` and `develop`. A release tag is created on `main` to mark the release version.

### 5. **Hotfix Branches** (`hotfix/x.y.z`)
- **Purpose**: These branches are used for critical bug fixes that need to be deployed immediately in production.
- **Creation**: A hotfix branch is created from `main` when an urgent bug is discovered in production.
- **Naming Convention**: `hotfix/x.y.z` (replace `x.y.z` with the version number of the hotfix).
- **Merging Strategy**: After the bug fix is applied, the hotfix branch is merged into both `main` and `develop`.

### 6. **Bugfix Branches** (`bugfix/xyz`)
- **Purpose**: These branches are used for fixing minor bugs or issues within the codebase.
- **Creation**: A bugfix branch is created from `develop` when a non-critical issue is identified and needs to be addressed.
- **Naming Convention**: `bugfix/xyz` (replace `xyz` with a description of the bug).
- **Merging Strategy**: Once the bug is fixed, the branch is merged back into `develop`.

## Contributing

> **Instructions for contributing to the project.**  
> Include guidelines for submitting issues, pull requests, and any coding conventions or style guides the team follows.

---

## License

> **Specify the licensing for the project**  
> This section should include the license under which the project is distributed (e.g., MIT License, GPL, etc.).

---

## Contact

> **How to contact the project maintainers**  
> Provide email addresses, links to the project's website or other communication channels, and any relevant contact information.
