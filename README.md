# 👟 Shoe Shop - Flutter eCommerce App

A modern and minimal **Flutter eCommerce application** for browsing and purchasing sneakers.
This app demonstrates clean UI, state management using Provider, and a simple cart system.

---

## 🚀 Features

* 🛍️ Browse available shoes
* ➕ Add items to cart
* ❌ Remove items from cart
* 🧮 Cart total calculation
* 🔢 Cart item count badge
* 📱 Responsive UI with Material 3
* 📄 About page
* 📦 State management using Provider

---

## 📸 Screens

* Intro Screen
* Shop (Product Listing)
* Cart Page
* About Page

---

## 🧠 Tech Stack

* **Flutter**
* **Dart**
* **Provider (State Management)**
* **Material 3 UI**

---

## 📂 Project Structure

```
lib/

├── main.dart
├── intro_page.dart
├── home_page.dart
├── about.dart
├── cart.dart
├── cart_page.dart
├── cart_item.dart
├── shop_page_state.dart
├── shoe_tile.dart

├── model/
│   └── shoe.dart

├── component/
│   └── my_bottom_nav_bar.dart

└── image/
    ├── air_jordan.jpg
    ├── zoom_freak.jpg
    ├── Kd_tyres.png
    └── nike-logo.jpg
```

---

## ⚙️ Installation

1. Clone the repository

```
git clone https://github.com/your-username/shoe-shop.git
```

2. Navigate to the project

```
cd shoe-shop
```

3. Get dependencies

```
flutter pub get
```

4. Run the app

```
flutter run
```

---

## 🧩 State Management

This project uses **Provider** for managing cart state:

* `Cart` class extends `ChangeNotifier`
* Handles:

  * Product list
  * User cart
  * Add/remove operations

---

## 💡 Key Concepts Used

* Stateless & Stateful Widgets
* Provider & Consumer
* Navigation (push / pushReplacement)
* ListView.builder
* Custom reusable components
* UI composition

---

## 🛒 Cart Logic

* Add item:

```dart
cart.addItemToCart(shoe);
```

* Remove item:

```dart
cart.removeItemFromCart(shoe);
```

* Calculate total:

```dart
cart.userCart.fold<int>(0, (sum, s) => sum + int.parse(s.price))
```

---

## 🔮 Future Improvements

* 🔐 User authentication
* 💳 Payment integration
* 🔎 Search functionality
* 📦 Backend API integration
* ❤️ Wishlist feature
* 🌙 Dark mode

---

## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first.

---

## 📜 License

This project is open-source and available under the MIT License.

---

## 👨‍💻 Author

Developed by **Sachith Anuranaga**

---

## ⭐ Support

If you like this project, give it a ⭐ on GitHub!
