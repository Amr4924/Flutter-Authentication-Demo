<div align="center">

# 🔐 Flutter Authentication Demo

**A clean login flow with form validation, custom theming, and tabbed navigation — built as part of my Flutter learning journey.**

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

</div>

---

## 📖 Table of Contents
- [About](#-about)
- [Features](#-features)
- [Preview](#️-preview)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [How It Works](#️-how-it-works)
- [What I Practiced](#-what-i-practiced)
- [Roadmap](#️-roadmap)
- [Connect](#-connect)
- [License](#-license)

---

## 📌 About

This project is a practice build focused on one of the most common — and most deceptively tricky — pieces of any mobile app: **the authentication flow.**

It covers a validated login form, a themed UI built on Material 3, and a tabbed home shell with a side drawer for logging out. No backend is wired in yet — the goal here was to nail the UI, the state handling, and the navigation logic first.

Another step in my **#LearningInPublic** journey — building mobile apps one project at a time. 🚀

---

## ✨ Features

- ✅ **Email & password login form** with real-time validation
- 👁️ **Toggleable password visibility** (show/hide)
- ⚠️ **Custom SnackBar feedback** when the form is invalid
- 🧭 **Bottom Navigation Bar** with three sections — Home, Profile, Settings
- 📂 **Side Drawer** with a Logout action available on every tab
- 🎨 **Material 3 theming** with a custom seed color (deep purple / purple accent palette)

---

## 🖼️ Preview

> 📸 *Add your screenshots here once you have them — drop them into `assets/screenshots/` and update the paths below.*

| Login Screen | Home Screen |
|:---:|:---:|
| <img src="assets/screenshots/login.png" width="250"/> | <img src="assets/screenshots/home.png" width="250"/> |

---

## 🛠️ Tech Stack

| Category | Tool |
|---|---|
| Framework | Flutter |
| Language | Dart |
| Design System | Material 3 |
| State Management | `setState` (StatefulWidget) |
| Navigation | `Navigator.push` / `Navigator.pop` |

---

## 📂 Project Structure

```
lib/
├── main.dart                 # App entry point & global theme setup
├── login_screan.dart         # Login UI, form validation, navigation logic
├── second_screan.dart        # Home shell — hosts the BottomNavigationBar
└── navbar_pages/
    ├── home.dart              # Home tab
    ├── profile.dart           # Profile tab
    └── setting.dart           # Settings tab
```

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed
- Android Studio or VS Code with the Flutter extension
- An emulator or physical device to run the app on

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/<your-username>/flutter-authentication-demo.git

# 2. Navigate into the project
cd basic_mobile_app

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
```

---

## ⚙️ How It Works

```
Login Screen
   │  (validates email & password)
   ▼
Home Shell
   ├── Home Tab
   ├── Profile Tab
   └── Settings Tab
         │
         └── Drawer → Logout → back to Login Screen
```

---

## 🧠 What I Practiced

- Form validation using `GlobalKey<FormState>` and custom field validators
- Managing local UI state (e.g. password visibility) with `setState`
- Building a tabbed app shell with `BottomNavigationBar`
- Multi-screen navigation with `Navigator.push` / `Navigator.pop`
- Custom Material 3 theming with `ColorScheme.fromSeed`
- Using `Drawer` for secondary navigation actions like logout

---

## 🗺️ Roadmap

- [ ] Connect to a real authentication backend (Firebase Auth / REST API)
- [ ] Persist login session so users stay logged in
- [ ] Replace the double `Navigator.pop()` logout logic with a cleaner route reset
- [ ] Add transition animations between screens
- [ ] Add automated widget tests

---

## 🤝 Connect

- 💼 LinkedIn: [Your LinkedIn]
- 💻 GitHub: [Your GitHub]
- 🏷️ Part of my **#LearningInPublic** Flutter practice series

---

## 📄 License

This project was built for learning purposes and is free to explore, fork, or use as a reference under the [MIT License](LICENSE).
