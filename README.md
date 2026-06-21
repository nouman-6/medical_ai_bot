# 🩺 Medical AiBot

**Medical AiBot** is a Flutter-based mobile application that acts as an AI-powered health companion. It uses Google's Gemini model to answer health and wellness related questions in a concise, professional, and easy-to-understand manner — and politely declines anything outside the medical scope.

---

## ✨ Features

- 🤖 **AI Health Assistant** — Powered by Google's `gemini-2.0-flash` model via `google_generative_ai`
- 💬 **Clean Chat Interface** — Built using `flutter_ai_toolkit`'s `LlmChatView` for a smooth, modern chat UX
- 🎯 **Domain-Restricted Responses** — A custom system instruction keeps the assistant focused strictly on health/medical queries
- 💡 **Smart Suggestions** — Quick-tap example prompts to help users get started
- 🌿 **Animated Splash Screen** — Fade-in branding animation before transitioning into the chat
- 🎨 **Soft Medical UI Theme** — Calming teal/white color palette designed for a healthcare feel

---

## 📱 Screenshots

> _Add screenshots or a screen recording here once available._

| Splash Screen | Chat Screen |
|---------------|-------------|
| _screenshot_  | _screenshot_ |

---

## 🛠️ Tech Stack

| Layer        | Technology |
|--------------|------------|
| Framework    | [Flutter](https://flutter.dev/) |
| Language     | Dart |
| AI Model     | Google Gemini (`gemini-2.0-flash`) |
| AI SDK       | [`google_generative_ai`](https://pub.dev/packages/google_generative_ai) |
| Chat UI      | [`flutter_ai_toolkit`](https://pub.dev/packages/flutter_ai_toolkit) |

---

## 📂 Project Structure

```
lib/
├── main.dart                      # App entry point
└── screens/
    ├── splash_screen.dart         # Animated splash screen
    └── med_chat_screen.dart       # Main AI chat screen
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed
- A [Google AI Studio API key](https://aistudio.google.com/app/apikey) for Gemini

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/nouman-6/medical_ai_bot.git
   cd medical_ai_bot
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add your Gemini API key**

   Open `lib/screens/med_chat_screen.dart` and set your API key:
   ```dart
   String apiKey = "YOUR_GEMINI_API_KEY";
   ```

   > ⚠️ For production use, avoid hardcoding your API key. Use a `.env` file with a package like [`flutter_dotenv`](https://pub.dev/packages/flutter_dotenv) or pass it in via `--dart-define` and keep it out of version control.

4. **Run the app**
   ```bash
   flutter run
   ```

---

## ⚠️ Disclaimer

Medical AiBot is intended for **informational purposes only** and does **not** provide professional medical diagnosis or treatment. Always consult a qualified healthcare provider for medical advice, diagnosis, or treatment decisions.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/nouman-6/medical_ai_bot/issues) or open a pull request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

## 👤 Author

**Nouman**
GitHub: [@nouman-6](https://github.com/nouman-6)
