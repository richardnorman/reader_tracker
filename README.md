# BookTrack: A Simple Flutter Book Tracker 📚
BookTrack is a clean, simple mobile application built with Flutter that helps you track your reading journey. Search for books using the Google Books API, save them to your personal library, and keep a special list of your favorites.

## ✨ Features
Search Books: Find any book using the powerful Google Books API.

Build Your Library: Add books to your personal collection to track what you've read, are currently reading, or want to read.

Favorite List: Keep a separate list of your all-time favorite books for quick access.

Local Persistence: Your library and favorites are saved on your device, so you'll never lose your data.

Clean & Simple UI: A minimalist and user-friendly interface for a smooth experience.

## 🚀 Getting Started
Follow these instructions to get a copy of the project up and running on your local machine.

### Prerequisites
You need to have the Flutter SDK installed on your machine. You can find instructions here.

### Installation
Clone the repository:

```Bash
git clone https://github.com/your-username/book-tracker-app.git
```
Navigate to the project directory:

```Bash
cd book-tracker-app
```
Install dependencies:
```Bash
flutter pub get
```
Add your Google Books API Key:
- Obtain a free API key from the Google Cloud Console.
- Create a new file named api_key.dart inside the lib/ directory.
- Add the following line to lib/api_key.dart:
```Dart
const String GOOGLE_API_KEY = 'YOUR_API_KEY_HERE';
```
Run the app:
```Bash
flutter run
```
## 📸 Screenshots
