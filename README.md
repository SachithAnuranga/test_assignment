# test_assignment

# 📝 Flutter Todo App (Hive Local Storage)

A simple and clean Todo List mobile application built using Flutter with local data persistence using Hive.

---

## 🚀 Features

* ✅ Add new tasks
* ✅ Mark tasks as completed
* ✅ Delete tasks
* ✅ Local data persistence (Hive)
* ✅ Simple and clean UI
* ✅ Dialog-based task input

---

## 🛠️ Tech Stack

* **Flutter** – UI framework
* **Dart** – Programming language
* **Hive** – Lightweight NoSQL local database

---

## 📂 Project Structure

```
lib/
│
├── database/
│   └── ToDoDatabase.dart     # Handles Hive operations
│
├── util/
│   ├── dialog_box.dart       # Add task dialog UI
│   ├── my_button.dart        # Reusable button widget
│   └── todo_tile.dart        # Task item UI
│
├── home_screen.dart          # Main Todo screen
├── todo_page.dart            # Demo page (unused)
└── main.dart                 # App entry point
```

---

## 🧠 How It Works

1. App initializes Hive database
2. Opens a local storage box (`mybox`)
3. On first launch:

   * Creates default todo items
4. On subsequent launches:

   * Loads saved data from Hive
5. User actions:

   * Add task → Dialog input
   * Toggle task → Checkbox
   * Delete task → Remove item

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  hive: ^2.2.3
  hive_flutter: ^1.1.0

dev_dependencies:
  hive_generator: ^2.0.1
  build_runner: ^2.4.9
```

---

## ⚠️ Known Limitations

* Data structure uses `List<List>` instead of a proper model
* No input validation for empty tasks
* No edit/update functionality
* No state management (Provider, Riverpod, etc.)
* `TodoPage` is currently unused
* Persistence must be manually triggered after updates

---

## 🔧 Setup & Run

### 1. Clone the repository

```bash
git clone <your-repo-url>
cd test_assignment
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Run the app

```bash
flutter run
```

---

## 📸 Screens

* Home screen with task list
* Add task dialog
* Task completion & deletion

*(Add screenshots here if needed)*

---

## 🚀 Future Improvements

* [ ] Use proper data model (`Task` class)
* [ ] Add Hive TypeAdapter
* [ ] Edit existing tasks
* [ ] Add due dates & priority
* [ ] Improve UI/UX
* [ ] Add dark mode
* [ ] Use state management (Provider/Riverpod)

---

## 💼 Use Case

This project is suitable for:

* Learning Flutter basics
* Understanding local storage with Hive
* Beginner portfolio project

---

## 👨‍💻 Author

Developed as a Flutter practice project.

---

## 📄 License

This project is private and not published to pub.dev.
