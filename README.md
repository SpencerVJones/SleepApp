<div align="center">
  <h2 align="center">Sleep App</h2>
  <div align="left">
	
![Repo Views](https://visitor-badge.laobi.icu/badge?page_id=SpencerVJones/SleepApp)
</div>

  <p align="center">
    A SwiftUI iOS app that calculates your ideal bedtime using Core ML and user inputs like wake time, desired sleep, and coffee intake.
    <br />
    <br />
    <a href="https://github.com/SpencerVJones/SleepApp/issues">Report Bug</a>
    ·
    <a href="https://github.com/SpencerVJones/SleepApp/issues">Request Feature</a>
  </p>
</div>


<!-- PROJECT SHIELDS -->
<div align="center">


![License](https://img.shields.io/github/license/SpencerVJones/SleepApp?style=for-the-badge)
![Contributors](https://img.shields.io/github/contributors/SpencerVJones/SleepApp?style=for-the-badge)
![Forks](https://img.shields.io/github/forks/SpencerVJones/SleepApp?style=for-the-badge)
![Stargazers](https://img.shields.io/github/stars/SpencerVJones/SleepApp?style=for-the-badge)
![Issues](https://img.shields.io/github/issues/SpencerVJones/SleepApp?style=for-the-badge)
![Last Commit](https://img.shields.io/github/last-commit/SpencerVJones/SleepApp?style=for-the-badge)
![Repo Size](https://img.shields.io/github/repo-size/SpencerVJones/SleepApp?style=for-the-badge)
![Platform](https://img.shields.io/badge/platform-iOS-lightgrey.svg?style=for-the-badge)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Framework-blue.svg?style=for-the-badge)
![Combine](https://img.shields.io/badge/Combine-Framework-purple.svg?style=for-the-badge)
![Machine Learning](https://img.shields.io/badge/Machine%20Learning-%E2%9C%94%EF%B8%8F-green.svg?style=for-the-badge)
![Regression](https://img.shields.io/badge/Regression-Models-blue.svg?style=for-the-badge)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-%E2%9C%94%EF%B8%8F-orange.svg?style=for-the-badge)
![Score Prediction](https://img.shields.io/badge/Score%20Prediction-%E2%9C%94%EF%B8%8F-red.svg?style=for-the-badge)
</div>



## 📑 Table of Contents
- [Overview](#overview)
- [Technologies Used](#technologies-used)
- [Dataset](#dataset)
- [Features](#features)
- [Demo](#demo)
- [Project Structure](#project-structure)
- [Testing](#testing)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [How to Use](#how-to-use)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
	- [Contributors](#contributors)
- [License](#license)
- [Contact](#contact)

## Overview
**SleepApp** helps users optimize their sleep schedule. It leverages a trained machine learning model (Core ML) to recommend an ideal bedtime based on:
- Wake-up time
- Desired hours of sleep
- Daily coffee intake

Users interact with a simple, clean SwiftUI interface to get tailored sleep advice in real-time.

## Technologies Used
- Swift
- SwiftUI
- Core ML (Machine Learning)
- Create ML (Model Training)
- Xcode

## Dataset
The Core ML model was trained using synthetic sleep pattern data including:
- Wake-up times
- Desired sleep hours
- Coffee intake values

## Features
- 🛏 Predict ideal bedtime using a machine learning model
- ☕️ Coffee intake slider to adjust prediction
- ⏰ Wake-up time picker
- 🎯 Real-time feedback in a minimal UI
- 🤖 Embedded Core ML model trained with Create ML

## Demo
Coming Soon!

## Project Structure
```bash
spencervjones-sleepapp/
├── README.md
├── LICENSE
└── SleepApp/
    ├── BetterRest.csv
    ├── ContentView.swift
    ├── SleepApp.entitlements
    ├── SleepAppApp.swift
    ├── SleepCalculator.mlmodel
    ├── Assets.xcassets/
    │   ├── AccentColor.colorset/
    │   └── AppIcon.appiconset/
    └── MyTabularRegressor.mlproj/
        ├── Data Sources/
        ├── Models/
        └── Project.json
   ```

## Testing
Coming Soon!

## Getting Started
### Prerequisites
- macOS with Xcode 14+
- iOS Simulator or real iPhone (recommended iOS 15+)
### Installation
1. Clone the repo:
``git clone https://github.com/SpencerVJones/SleepApp.git``
2. Open in Xcode:
``` bash
cd SleepApp
open SleepApp.xcodeproj
```
3. Run on your simulator or device.

###  How to Use
-   Set your desired wake-up time.
-   Choose how many hours of sleep you want.
-   Adjust your daily coffee intake.
-   Instantly view your recommended bedtime!
 
## Usage
 Use this app to improve your sleep hygiene by understanding how caffeine and preferences influence your optimal bedtime.
 
## Roadmap
 - [ ] Add daily sleep tracking
 - [ ] Visualize historical predictions
 - [ ] Enable dark/light mode toggling
 - [ ] Add health data integration (HealthKit)

See open issues for a full list of proposed features (and known issues).
 
 
## Contributing
Contributions are welcome! Feel free to submit issues or pull requests with bug fixes, improvements, or new features.
- Fork the Project
- Create your Feature Branch (git checkout -b feature/AmazingFeature)
- Commit your Changes (git commit -m 'Add some AmazingFeature')
- Push to the Branch (git push origin feature/AmazingFeature)
- Open a Pull Request

### Contributors
<a href="https://github.com/SpencerVJones/SleepApp/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=SpencerVJones/SleepApp"/>
</a>


## License
Distributed under the MIT License. See LICENSE for more information.



## Contact
Spencer Jones
📧 [SpencerVJones@outlook.com](mailto:SpencerVJones@outlook.com)  
🔗 [GitHub Profile](https://github.com/SpencerVJones)  
🔗 [Project Repository](https://github.com/SpencerVJones/SleepApp)
