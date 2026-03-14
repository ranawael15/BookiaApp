📚 Bookia - Book Store App

A modern Flutter bookstore application with a clean and elegant UI.
The app is built using Clean Architecture and BLoC/Cubit for scalable and maintainable code.

---

✨ Features

- 🔐 Authentication

    - Login
    - Register
    - Forgot Password
    - OTP Verification
    - Reset Password

- 🏠 Home Screen

    - Display Best Seller books
    - Browse available books

- 📖 Book Details

    - View detailed book information

- ❤️ Wishlist

    - Save favorite books

- 🛒 Cart & Checkout

    - Add books to cart
    - Checkout and place orders

- 📦 Orders

    - Place and manage orders

- 🔍 Search

    - Search for books easily

- 👤 Profile

    - View and update user profile

- 🌍 Multi-language Support

    - Arabic 🇪🇬
    - English 🇺🇸

---

🛠️ Tech Stack

- Flutter — UI Framework
- Cubit / BLoC — State Management
- Clean Architecture — Project Structure
- Easy Localization — Multi-language Support
- Flutter ScreenUtil — Responsive Design
- Flutter Gen — Asset Generation

---

📁 Project Structure

lib
│
├── core
│   ├── theme
│   ├── widgets
│
├── feature
│   ├── auth
│   │   ├── cubit
│   │   ├── data
│   │   └── ui
│   │
│   └── welcome
│       ├── cubit
│       ├── data
│       └── ui
│
└── gen

---

🚀 Getting Started

1️⃣ Clone the repository

git clone https://github.com/ranawael15/BookiaApp.git

2️⃣ Navigate to the project

cd bookstore

3️⃣ Install dependencies

flutter pub get

4️⃣ Run code generation

flutter pub run build_runner build --delete-conflicting-outputs

5️⃣ Run the application

flutter run

---

🎨 Design

The application UI is designed in Figma with a modern and minimal design using a gold-themed color palette.

---

📌 Project Status

🚧 Under Active Development

New features and improvements are continuously being added.