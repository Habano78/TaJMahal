TaJMahal Restaurant App
TaJMahal is a SwiftUI iOS application developed to showcase the menu of a fictional Indian restaurant. It serves as a practical example of a modern, test-driven approach to iOS development, focusing on clean architecture and best practices.

🚀 Features
Welcome Screen: Presents the restaurant with key information (hours, address, contact).

Structured Menu: Displays the full menu, organized by sections (e.g., Appetizers, Main Courses).

Detailed Dish View: Allows users to view detailed information for each dish.

Intuitive Navigation: Built with native SwiftUI navigation, including a customized navigation bar for a seamless user experience.

🏛️ Architecture & Tech Stack
This project was built with a strong focus on clean architecture, testability, and modern development practices.

MVVM (Model-View-ViewModel): The core architecture provides a clear separation of concerns between the UI (View), the presentation logic and state (ViewModel), and the data (Model).

SwiftUI: The entire user interface is built declaratively with SwiftUI, leveraging its powerful tools for building responsive and maintainable views.

Protocol-Oriented Programming (POP): Dependencies, such as data repositories, are abstracted using protocols. This is key to the app's testability, allowing for easy mocking.

Dependency Injection (DI): The ViewModel is initialized with a mocked repository in the tests, ensuring that business logic is validated in isolation from external dependencies.

Data Modeling: The data is strongly typed for safety and clarity.

Dish model conforms to Identifiable and Hashable for easy use in SwiftUI lists and collections.

An enum (SpiceLevel) is used to securely manage spice level options.

Unit Testing (XCTest): The project includes a suite of unit tests for its business logic.

Tests are isolated using setUp() and tearDown() methods.

The @testable attribute is used for controlled access to internal types during testing.

📂 Project Structure
The project is organized into logical layers to facilitate navigation and maintainability:

TaJMahal/
├── Models/
│   ├── Dish.swift          # Business model for a dish
│   └── SpiceLevel.swift    # Enum for spice levels
├── ViewModels/
│   └── MenuViewModel.swift # Logic for the menu view (example)
├── Views/
│   ├── WelcomeView.swift
│   ├── MenuView.swift
│   └── DetailView.swift
├── Repositories/
│   └── DishRepository.swift # Provides dish data (mocked for this project)
└── TaJMahalApp.swift       # Main app entry point

TaJMahalTests/
└── TaJMahalTests.swift     # Unit tests for the ViewModel

⚙️ Getting Started
To clone and run the project locally, follow these steps:

Clone the repository:

git clone [https://github.com/Habano78/TaJMahal.git](https://github.com/Habano78/TaJMahal.git)

Open the project in Xcode:

cd TaJMahal
open TaJMahal.xcodeproj

Run the application:

Select a simulator or a physical device.

Press Cmd+R to build and run the app.

✅ Running Tests
The project includes a suite of unit tests. To run them:

Open the Test Navigator in Xcode (Cmd+6).

Click the play button next to the TaJMahalTests target or press Cmd+U.
