# 🌿 SoulEase — Mental Health & Wellness App  

> 🧘‍♂️ *Your one-stop solution for emotional tracking, stress relief, and mental & physical fitness.*  

SoulEase is a **mental health app** designed to help users track their emotions, overcome stress, anxiety, and depression, while also improving physical fitness.  
It combines **emotion tracking (SoulScore)**, **journaling**, **to-do lists**, and **daily wellness tips** to provide holistic support for mental well-being.  

---

## ✨ Features  
- 📊 **SoulScore** – Track daily emotions via emoji-based check-ins.  
- 📔 **Journal** – Record thoughts, feelings, and reflections.  
- ✅ **To-Do List** – Manage daily habits & productivity.  
- 💡 **Tips & Remedies** – Curated advice for mental & physical fitness.  
- 🌱 **Holistic Wellness** – One app for both mind and body health.  

---

## 🛠️ Prerequisites  
Before running locally, make sure you have:  

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (stable channel)  
- Android SDK / Xcode + CocoaPods (for iOS builds)  
- Java JDK (for Android toolchain)  
- IDE: **VS Code** / **Android Studio** (with Flutter & Dart plugins)  
- A connected **device** or **emulator**  

Check installation:  
```bash
flutter --version

```
## 🚀 Run Locally (Step-by-Step)
### 1️⃣ Clone the repo
git clone https://github.com/mohithjain/SoulEase_MentalHealthApp.git
cd SoulEase_MentalHealthApp

### 2️⃣ Install dependencies
flutter pub get

### 3️⃣ Run the app
flutter devices           # list devices/emulators
flutter run               # run on default device
flutter run -d <device-id>   # run on specific device


## 👉 To launch an emulator:

flutter emulators
flutter emulators --launch <emulator_id>
flutter run

## 📦 Build for Release
Android
# APK
flutter build apk --release  

# App Bundle (Play Store)
flutter build appbundle --release

## iOS (on macOS)
cd ios
pod install
cd ..
flutter build ios --release

## ⚙️ Config / Environment

If your project uses runtime configs (API endpoints, keys):

Add lib/config.example.dart with placeholder values.

Copy it locally as lib/config.dart.

Keep config.dart in .gitignore.

Example:

// lib/config.example.dart
const String API_BASE_URL = "https://api.example.com";
const String SOME_PUBLIC_KEY = "REPLACE_WITH_VALUE";

## 🐛 Troubleshooting

Line ending warnings (CRLF vs LF):
Add .gitattributes with:

* text=auto


Branch error (src refspec main does not match any):
Make sure you’ve created commits and renamed the branch:

git branch -M main
git push -u origin main

## 🤝 Contributing

Fork the repo 🍴

Create a feature branch:

git checkout -b feat/awesome-feature


Run checks (flutter analyze, flutter test if available).

Commit & push:

git push origin feat/awesome-feature


Open a Pull Request.


## ⚠ Disclaimer

This chatbot is designed only as a companion and not a replacement for professional help.
If you are experiencing severe mental health issues, please consult a certified mental health professional.

## 👨‍💻 Developers

- [Manvi Sharma](https://github.com/ManviSharma04)
- [Mohith Jain](https://github.com/mohithjain) 


