TaJMahal Restaurant App (SwiftUI & MVVM)

Screenshot of the app in action here!

Table of Contents

Introduction

Features

MVVM Architecture (Model - View - ViewModel)

Getting Started

Implemented Best Practices

Introduction
TaJMahal is a mobile application developed in SwiftUI that allows users to browse the menu of an Indian restaurant. The project notably implements an MVVM (Model-View-ViewModel) architecture and includes unit tests.

Features
Welcome Screen: Presents the restaurant with key information (hours, address, contact).

Detailed Menu: Displays the full menu, structured by sections (Appetizers, Main Courses).

Dish Detail View: Allows viewing the details of each dish.

Intuitive Navigation: Uses SwiftUI's native navigation with a customized navigation bar.

MVVM Architecture (Model - View - ViewModel)
This project is designed following the principles of a modern and maintainable architecture.

View
Contains the user interface code and focuses solely on display.

In this project: WelcomeView, MenuView, DetailView, etc.

ViewModel
Manages the application's logic and prepares data for the views.

Model
Defines the application's data structures. The Dish structure implements the Identifiable and Hashable protocols.

In this project: Dish, SpiceLevel

Getting Started
Prerequisites
Xcode 15 or later.

iOS 16 or later.

Installation
Clone the repository to your local machine:

git clone [https://github.com/Habano78/TaJMahal.git](https://github.com/Habano78/TaJMahal.git)

Open the .xcodeproj file in Xcode.

Build and run the project on your preferred simulator or physical device.

Usage
Launch the app and explore the menu 💪

Implemented Best Practices
Data Modeling
Type Safety: Uses an enum (SpiceLevel) to manage spice levels securely.

Strict Typing: Designed to use precise monetary types (Decimal or Double) for the price property (avoiding String).

Unit Testing (XCTest)
Test Isolation: Uses setUp() and tearDown() methods to ensure each test runs in a clean and isolated environment.

Mocking and Dependency Injection: The ViewModel is initialized with a mocked repository, ensuring that tests validate business logic without depending on external dependencies (API, database).

Access Control: Uses the @testable attribute for controlled access to internal types during testing.
