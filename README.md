# Landmarks (SwiftUI + MapKit)

A simple SwiftUI demo app inspired by Apple’s **Landmarks** tutorial.  
Shows how to build a list → detail → map flow with shared state, favorites filter, and MapKit integration.

## Features
- SwiftUI list/detail navigation
- MapKit region view with `Map(position:)`
- Favorites filter (`isFavorite`)
- Reusable `CircleImage` view
- Shared state via `ModelData` (`ObservableObject` + `.environmentObject`)

## Requirements
- Xcode 15+
- iOS 17+
- Swift 5.9+

## How to Run
1. Open `Landmarks.xcodeproj` in Xcode  
2. Select a simulator  
3. Press **⌘R** to build and run
