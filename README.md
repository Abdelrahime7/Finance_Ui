# 📱 Finance App UI – Flutter

A Flutter project that recreates a modern **Finance App UI** based on the [Figma design](https://www.figma.com/design/NL0OnSGC9K4RIZho9Iglae/%D9%92Finance-UI-UX?node-id=1-112&t=sBPGwMDxB6aFFfu6-0).  
This repository demonstrates how to transform static design assets into a fully functional Flutter interface, following best practices for responsive layouts and clean widget structure.

---

## ✨ Features
- Pixel‑perfect UI extracted from the original Figma design
- Responsive layout for mobile and tablet using `MediaQuery` and `flutter_screenutil`
- Modular widget structure for reusability and scalability
- Custom themes and typography for consistent styling
- Support for dark/light mode
- Finance‑specific components: dashboard, transaction list, charts, and profile screens

---

## 🖼️ Screenshots

### Dashboard
![Dashboard](assets/screenshots/dashboard.png)

### Transactions
![Transactions](assets/screenshots/transactions.png)

### Profile
![Profile](assets/screenshots/profile.png)

*(Export these images from your Figma file and save them under `assets/screenshots/` in the repo.)*

---

## 🛠️ Tech Stack
- **Flutter** (latest stable version)
- **Dart**
- **Figma** (UI/UX design source)
- Packages:
  - `flutter_screenutil` for responsive scaling
  - `google_fonts` for typography
  - `charts_flutter` (or `fl_chart`) for financial charts

---

## 🚀 Getting Started

### Prerequisites
- Install [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Install Android Studio or VS Code with Flutter extensions
- Ensure you have an emulator or physical device connected

### Installation
```bash
git clone https://github.com/your-username/finance-app-ui.git
cd finance-app-ui
flutter pub get
flutter run
