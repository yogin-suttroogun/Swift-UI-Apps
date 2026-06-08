# 📱 Swift UI Apps

A curated collection of SwiftUI mini-apps and components, built natively in Swift. Each mini-app explores a distinct UI pattern or interaction model, forming a practical reference for modern iOS development.

<img width="295" height="640" alt="Simulator Screen Recording - iPhone 17 Pro - 2026-04-28 at 21 59 10" src="https://github.com/user-attachments/assets/7b2022eb-7074-439d-9924-c4f74b03269e" />

---

## Overview

Swift UI Apps serves as a living playground for SwiftUI concepts — from navigation and state management to animations and custom components. Rather than a single-purpose app, this repo is a showcase of breadth: multiple self-contained screens, each demonstrating a specific SwiftUI capability.

---

## Tech Stack

| Layer | Technology |
|---|---|
| Language | Swift |
| UI Framework | SwiftUI |
| Platform | iOS (Xcode) |
| Testing | XCTest (Unit + UI) |

---

## Project Structure

```
Swift-UI-Apps/
├── Swift UI Apps/              # Source — views, models, components
├── Swift UI AppsTests/         # Unit tests
├── Swift UI AppsUITests/       # UI automation tests
├── Swift UI Apps.xcodeproj/    # Xcode project configuration
└── Swift-UI-Apps-Info.plist    # App configuration
```

---

## What's Inside

Each screen in the app isolates a different SwiftUI concept, including:

- **Navigation & routing** — NavigationStack, sheet presentation, deep links
- **State & data flow** — `@State`, `@Binding`, `@ObservableObject`, `@EnvironmentObject`
- **Custom components** — reusable views built from SwiftUI primitives
- **Animations & transitions** — `withAnimation`, `matchedGeometryEffect`, custom modifiers
- **Lists & grids** — `List`, `LazyVGrid`, pull-to-refresh, swipe actions

---

## Getting Started

**Requirements:** Xcode 16+, iOS 17+

```bash
git clone https://github.com/yogin-suttroogun/Swift-UI-Apps.git
cd Swift-UI-Apps
open "Swift UI Apps.xcodeproj"
```

Hit **⌘R** to build and run. Navigate between mini-apps from the home screen.

**Run tests:**
```
⌘U  — runs all unit and UI tests
```

---

## Architecture

The project follows SwiftUI's natural MVVM alignment:

- **Views** — declarative SwiftUI screens, each self-contained and independently navigable
- **ViewModels** — `ObservableObject` classes managing state and business logic per screen
- **Models** — plain Swift value types representing each feature's data

This keeps each mini-app loosely coupled, so new screens can be added without touching existing ones — the same discipline needed to scale a real production codebase.

---

## What This Demonstrates

- **SwiftUI fluency** — composing complex UIs from declarative building blocks
- **State management** — choosing the right property wrapper for each scope
- **Test coverage** — both unit and UI tests as a professional standard
- **Modular thinking** — structuring code so features stay independent and composable

---

## Author

**Yogin Suttroogun**  
[GitHub](https://github.com/yogin-suttroogun) · [Email](mailto:yo.suttroogun@gmail.com)
