# Basketball Score App

### Screenshots

<div align="center">
  <a href="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/liveScreen.png">
    <img src="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/liveScreen.png" width="200" height="450" alt="liveScreen.png">
  </a>
  <a href="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/statsScreen.png">
    <img src="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/statsScreen.png" width="200" height="450" alt="statsScreen.png" border="0">
  </a>
  <a href="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/overviewScreen.png">
    <img src="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/overviewScreen.png" width="200" height="450" alt="overviewScreen.png" border="0">
  </a>
  <a href="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/h2hScreen.png">
    <img src="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/h2hScreen.png" width="200" height="450" alt="h2hScreen.png" border="0">
  </a>
  <a href="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/oddsScreen.png">
    <img src="https://github.com/neenuperunthody/BasketballScoreApp-/blob/main/Screenshots/oddsScreen.png" width="200" height="450" alt="oddsScreen.png" border="0">
  </a>
</div>

<div align="center">
  <a alt="Swift logo" href="https://developer.apple.com/swift/" target="_blank" rel="noreferrer">
    <img src="https://developer.apple.com/swift/images/swift-og.png" width="45">
  </a>
  <a href="https://developer.apple.com/documentation/xctest" target="_blank" rel="noreferrer">
    <img src="https://miro.medium.com/v2/resize:fit:600/1*xCpPAltTH58qj-UHD-pNNg.png" width="45">
  </a>
</div>

✨ **Tech Stack** ✨

- [Swift](https://developer.apple.com/swift/)
- [XCTest](https://developer.apple.com/documentation/xctest)

**Dependencies**

- [Alamofire](https://github.com/Alamofire/Alamofire)
- [AlamofireImage](https://github.com/Alamofire/AlamofireImage)
- [LZViewPager](https://github.com/ladmini/LZViewPager)

## Introduction

The Basketball Score App is a robust mobile solution for obtaining live game scores, engineered with industry-leading tools and libraries.

## Prerequisites

1. Install Xcode.
2. Install Homebrew (if not already installed).
3. Install CocoaPods.

## Project Structure

```
.
├── Basketball Score App
│   ├── ActivityIndicator.swift
│   ├── AppDelegate.swift
│   ├── Assets.xcassets
│   ├── Base.lproj
│   │   ├── LaunchScreen.storyboard
│   │   └── Main.storyboard
│   ├── Constants.swift
│   ├── Extensions
│   │   ├── UIColor-functionality .swift
│   │   ├── UIView-functionality.swift
│   │   └── UIViewController-functionality.swift
│   ├── Fonts
│   │   └── TitilliumWeb
│   ├── Info.plist
│   ├── MatchDetails.storyboard
│   ├── MatchDetailsMockData.swift
│   ├── MatchListMockData.swift
│   ├── Model
│   │   ├── MatchDetailsModel.swift
│   │   └── Tournaments.swift
│   ├── NetworkManager.swift
│   ├── SceneDelegate.swift
│   ├── TableViewCell
│   │   ├── H2HTableViewCell.swift
│   │   ├── StatsTableViewCell.swift
│   │   ├── TeamDetailsTableViewCell.swift
│   │   ├── TeamDetailsTableViewCell.xib
│   │   ├── TournamentNameTableViewCell.swift
│   │   └── TournamentNameTableViewCell.xib
│   ├── ViewController
│   │   ├── H2hViewController.swift
│   │   ├── MatchDetailsViewController.swift
│   │   ├── MatchListViewController.swift
│   │   ├── OddsViewController.swift
│   │   ├── OverviewViewController.swift
│   │   ├── StatsViewController.swift
│   │   ├── TabBarViewController.swift
│   │   └── UpdateViewController.swift
│   └── ViewModel
│       ├── MatchDetailsViewModel.swift
│       └── MatchListViewModel.swift
├── Basketball Score App.xcodeproj
├── Basketball Score App.xcworkspace
├── Basketball Score AppTests
│   ├── Basketball_Score_AppTests.swift
│   ├── MatchDetailsViewModelTest.swift
│   ├── MatchListViewModelTests.swift
│   └── MockNetworkManager.swift
├── Basketball Score AppUITests
├── Podfile
├── Podfile.lock
├── Pods
└── README.md
```

## Setting Up the Project

### Clone the Project:

```bash
git clone https://github.com/neenuperunthody/BasketballScoreApp-.git
```

### Navigate to Your Project Directory:

```bash
cd /path-to-directory
```

### Install the Pods:

Run the following command in Terminal to install the specified pods:

```bash
pod install
```

### Open the .xcworkspace File:

After running pod install, CocoaPods will create a .xcworkspace file. Open this file in Xcode:

```bash
open Basketball\ Score\ App.xcworkspace
```


##Additional Resources

To learn more about Xcode and Swift, take a look at the following resources:

- [Swift](https://developer.apple.com/swift/) - learn more about Swift.
- [Getting Started](https://developer.apple.com/documentation/safari-developer-tools/installing-xcode-and-simulators) - an **overview** of Xcode and how to set up your environment..
