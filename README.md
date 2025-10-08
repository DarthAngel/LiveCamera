# LiveCamera

A modern SwiftUI camera application that provides real-time camera feed display using AVFoundation and Swift concurrency.

## Overview

LiveCamera is a SwiftUI-based iOS application that captures and displays live video frames from the device camera. The app demonstrates modern Swift concurrency patterns with `async/await` and provides a clean, minimal interface for viewing the camera feed.

## Features

- **Real-time Camera Feed**: Live video streaming from the device's back camera
- **Modern Swift Architecture**: Built with SwiftUI and Swift concurrency (`async/await`)
- **Camera Permission Handling**: Automatic permission request and status management
- **Dual Wide Camera Support**: Utilizes the built-in dual wide camera when available
- **Portrait Orientation**: Optimized for portrait mode viewing
- **ObservableObject Pattern**: Reactive UI updates using Combine framework

## Architecture

The app follows a clean MVVM architecture:

### Core Components

- **`LiveCameraApp.swift`**: Main app entry point
- **`ContentView.swift`**: Root SwiftUI view that manages the FrameHandler
- **`CameraView.swift`**: Displays camera frames or a black placeholder
- **`FrameHandler.swift`**: Core camera management class that handles:
  - Camera permissions
  - AVCaptureSession setup
  - Frame processing and publishing
  - Swift concurrency integration

### Key Technologies

- **SwiftUI**: Modern declarative UI framework
- **AVFoundation**: Camera capture and video processing
- **Combine**: Reactive programming for UI updates
- **Swift Concurrency**: Modern async/await patterns
- **CoreImage**: Image processing and conversion

## Requirements

- iOS 15.0+ (for Swift concurrency features)
- Physical iOS device with camera (simulator not supported for camera features)
- Camera usage permissions

## Installation

1. Clone the repository
2. Open `LiveCamera.xcodeproj` in Xcode
3. Build and run on a physical iOS device

> **Note**: Camera functionality requires a physical device and cannot be tested in the iOS Simulator.

## Usage

1. Launch the app
2. Grant camera permissions when prompted
3. The app will automatically display the live camera feed
4. If no camera access is granted, a black screen will be displayed

## Technical Details

### Camera Setup
- Uses `AVCaptureDevice.default(.builtInDualWideCamera)` for enhanced camera capabilities
- Configured for portrait orientation
- Processes frames at device's native resolution

### Concurrency Model
- Replaced traditional `DispatchQueue` with modern `Task` and `async/await`
- Background processing for camera operations
- Main thread updates for UI changes

### Frame Processing
- Converts `CMSampleBuffer` to `CGImage` using CoreImage
- Publishes frames through `@Published` property for reactive UI updates
- Efficient memory management with proper cleanup

## Testing

The project includes comprehensive test coverage:

- **Unit Tests**: Located in `LiveCameraTests.swift`
- **UI Tests**: Located in `LiveCameraUITests.swift`
- **Test Categories**:
  - Initialization and setup
  - Permission handling
  - Async method testing
  - Frame processing
  - Memory management
  - Performance benchmarks

Run tests using `⌘+U` in Xcode or through Xcode's Test Navigator.

## Project Structure

```
LiveCamera/
├── LiveCameraApp.swift          # App entry point
├── ContentView.swift            # Main content view
├── CameraView.swift             # Camera display view  
├── FrameHandler.swift           # Camera management
├── LiveCameraTests.swift        # Unit tests
└── LiveCameraUITests.swift      # UI tests
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add appropriate tests
5. Submit a pull request

## License

This project is available under the MIT License.

## Author

Created by Angel Docampo on 8/10/25

---

## Recent Updates

### Swift Concurrency Migration
- Migrated from `DispatchQueue` to `Task` and `async/await`
- Improved error handling and async operations
- Enhanced test coverage for async methods

### Test Suite Enhancement
- Added comprehensive XCTest suite
- Performance testing for initialization and async operations
- Memory management verification
- Integration tests for complete workflow