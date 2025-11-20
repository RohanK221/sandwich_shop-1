# Sandwich Shop App

A small Flutter app used for teaching Flutter fundamentals. The app demonstrates building UI with stateless and stateful widgets, simple state management, widget testing, and basic app structure used across the course worksheets.

## Key features
- Counter-style sandwich ordering UI (increment/decrement quantity).
- Bread selection and order notes.
- Reusable styled buttons and display widgets.
- Example of separating styles and repositories for testable logic.

---

## Quick links (source)
- App entry and UI: [`App`](lib/main.dart) / [`OrderScreen`](lib/main.dart) / [`OrderItemDisplay`](lib/main.dart) / [`StyledButton`](lib/main.dart) / [`BreadType`](lib/main.dart) — [lib/main.dart](lib/main.dart)  
- Styles: [`AppStyles`](lib/views/app_styles.dart) — [lib/views/app_styles.dart](lib/views/app_styles.dart)  
- Business logic example: [`OrderRepository`](lib/repositories/order_repository.dart) — [lib/repositories/order_repository.dart](lib/repositories/order_repository.dart)  
- Tests: [test/widget_test.dart](test/widget_test.dart) and example cart tests [test/views/cart_screen_test.dart](test/views/cart_screen_test.dart)  
- Pubspec: [pubspec.yaml](pubspec.yaml)  
- Images and screenshots: [images/](images/)

---

## Installation & setup

### Install the essential tools

1. **Terminal**:
    - **macOS** – use the built-in Terminal app by pressing **⌘ + Space**, typing **Terminal**, and pressing **Return**.
    - **Windows** – open the start menu using the **Windows** key. Then enter **cmd** to open the **Command Prompt**. Alternatively, you can use **Windows PowerShell** or **Windows Terminal**.

2. **Git** – verify that you have `git` installed by entering `git --version` in the terminal.
    If this is missing, download the installer from [Git's official site](https://git-scm.com/downloads).

3. **Package managers**:
    - **Homebrew** (macOS) – verify that you have `brew` installed with `brew --version`; if missing, follow the instructions on the [Homebrew installation page](https://brew.sh/).
    - **Chocolatey** (Windows) – verify that you have `choco` installed with `choco --version`; if missing, follow the instructions on the [Chocolatey installation page](https://chocolatey.org/install).

4. **Flutter SDK** – verify that you have `flutter` installed and it is working with `flutter doctor`; if missing, install it using your package manager:
    - **macOS**: `brew install --cask flutter`
    - **Windows**: `choco install flutter`

5. **Visual Studio Code** – verify that you have `code` installed with `code --version`; if missing, use your package manager to install it:
    - **macOS**: `brew install --cask visual-studio-code`
    - **Windows**: `choco install vscode`

### Clone and run the repository

```bash
git clone https://github.com/YOUR_USERNAME/sandwich_shop.git
cd sandwich_shop
flutter pub get
flutter run
```

Notes:
- The app entrypoint is [lib/main.dart](lib/main.dart) (`App` widget).
- To change initial behavior, inspect `OrderScreen(maxQuantity: ...)` in [lib/main.dart](lib/main.dart).
- Start a device (Chrome, Android emulator, iOS simulator) before running `flutter run`, or use VS Code and press F5.

---

## Usage

### Main flows
- Increment and decrement sandwich quantity using the Add / Remove buttons (implemented by `StyledButton` in [lib/main.dart](lib/main.dart)).
- Toggle between six-inch and footlong using the switch.
- Select bread from the dropdown (uses `BreadType` enum).
- Add an order note via the text field (key: `notes_textfield`).

### Configuration
- `maxQuantity` for `OrderScreen` can be changed via the constructor in [lib/main.dart](lib/main.dart).
- Styles are centralized in [`AppStyles`](lib/views/app_styles.dart).

### Running tests
- Unit & widget tests:
```bash
flutter test
```
- Integration tests (if present in `integration_test/`):
```bash
flutter test integration_test
```
See example widget test at [test/widget_test.dart](test/widget_test.dart).

---

## Project structure

- `lib/`
  - `main.dart` — app entrypoint, `App`, `OrderScreen`, UI widgets
  - `views/`
    - `app_styles.dart` — shared text styles
  - `repositories/`
    - `order_repository.dart` — example business logic
- `test/` — unit and widget tests
- `images/` — screenshots and assets
- `pubspec.yaml` — dependencies and assets

---

## How this repo maps to course material

This repository is used across worksheets 1–8. The worksheets explain incremental changes, testing, and architecture:
- Intro & counter: [worksheet-1.md](worksheet-1.md)  
- Stateless widgets & App: [worksheet-2.md](worksheet-2.md)  
- Stateful widgets & OrderScreen: [worksheet-3.md](worksheet-3.md)  
- Architecture & testing guidance: [worksheet-4.md](worksheet-4.md)  
- Models & assets: [worksheet-5.md](worksheet-5.md)  
- Navigation & screens: [worksheet-6.md](worksheet-6.md)  
- State persistence: [worksheet-7.md](worksheet-7.md)  
- Integration testing & deployment: [worksheet-8.md](worksheet-8.md)

---

## Contribution

- Follow the worksheet step-by-step commits approach.
- Run `flutter test` before pushing changes.
- Keep changes small and commit often.

---

For implementation details, see:
- [lib/main.dart](lib/main.dart) — UI and widgets
- [lib/views/app_styles.dart](lib/views/app_styles.dart) — styling helpers
- [lib/repositories/order_repository.dart](lib/repositories/order_repository.dart) — example repository
- [test/widget_test.dart](test/widget_test.dart) — example widget test