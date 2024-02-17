# CurrencyConvertorApp

Currency Change App

Currency Change App is a Flutter application for converting and viewing currency exchange rates.

Introduction
Currency Change App allows users to check and convert currency exchange rates easily. The app provides a user-friendly interface for currency conversion, with up-to-date exchange rate information. 

Project Structure
The project follows a standard Flutter project structure. Key directories include:

lib: Main source code for the app.
test: Unit tests for the app.

Design Pattern
The app follows the Clean Architecture pattern for robust and maintainable code. This design pattern was chosen for its separation of concerns and ease of testing.

Image Loader Library
The app uses the cached_network_image library for efficient loading and caching of remote images. This choice was made for its performance and reliability.

Database
Currency Change App does not use a local database, as it primarily relies on real-time currency exchange rate data from external APIs.

Unit Testing
The project includes comprehensive unit tests for API integration and business logic using the test package.

Dependency Injection
Dependency injection is implemented using the get_it library. This approach was chosen for its simplicity and ease of use.

UI Implementation
The app utilizes Google's Material Design components for a consistent and visually appealing user interface.

State Management
The Bloc pattern is employed for state management, providing a clean and reactive architecture. This choice was made for its maintainability and ease of handling complex UI states.

Contributing
Contributions are welcome! Please follow our Contribution Guidelines for more information on how to contribute to the project.

License
This project is licensed under the MIT License - see the LICENSE file for details.
