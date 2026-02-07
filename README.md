# 🌸 Kanji Blossom 

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)

Kanji Blossom is a Flutter-based mobile application inspired by Kanji Blossom and Duolingo.  
It helps learners study Japanese kanji through **visual learning**, **examples**, and **guided writing practice** using stroke templates.

The app is designed with **Material You**, supports **light and dark themes**, and focuses on clean, modular code architecture.

---

## ✨ Features

- 📚 Kanji study mode with meanings, readings, and example words
- ✍️ Writing practice with **stroke guide (tracing template)**
- 🎯 Smart practice validation based on stroke matching
- 🌗 Light & Dark themes (Material You)
- 🌸 Kanji progress tracking (learned / not learned)
- 🧩 Modular and scalable project structure
- 📂 Kanji database stored in a separate file for easy extension

---

## 📱 Screenshots

> 📌 All screenshots are real app screens  
> Resolution: 1080×2400 (portrait)

| Home Screen | Actions Menu |
|------------|--------------|
| ![Home Screen](screenshots/home_screen.jpg) | ![Kanji Actions](screenshots/actions.jpg) |
| Kanji grid with learning progress | Study / Practice selection |

| Study Screen | Practice Screen |
|-------------|----------------|
| ![Study Screen](screenshots/study.jpg) | ![Practice Screen](screenshots/practice.jpg) |
| Kanji meaning, readings and examples | Guided kanji tracing with stroke template |




## 🧠 How Practice Mode Works

- Each kanji has a **stroke template**
- The template is drawn as a light guide
- The user traces over it with their finger
- If the drawn strokes are close enough to the template:
  - The stroke is marked as completed
- When **all strokes are completed**, the kanji is marked as *learned*

This approach mimics the behavior of **Kanji Blossom** and **Duolingo**.

---

## 📁 Project Structure

