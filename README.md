# Forever-Knights 🏰⚔️

A cross-platform C++ game project using [raylib](https://www.raylib.com/).
Built with **CMake** and works on **Linux, macOS, and Windows**.

---

## Project Structure

```
Forever-Knights/
│── CMakeLists.txt       # Build configuration
│── src/                 # Game source code (.cpp, .hpp)
│── resources/           # Game resources (images, audio, fonts etc.)
│── include/             # header files
│── external/            # Dependencies
│    └── raylib/         # raylib submodule

```

---

## Getting Started

### 1. Clone the repo (with submodules!)

Make sure you clone with `--recursive` so raylib is included:

```sh
git clone --recursive https://github.com/YourUser/Forever-Knights.git
cd Forever-Knights
```

If you forgot `--recursive`, run:

```sh
git submodule update --init --recursive
```

---

### 2. Build Instructions

#### **Linux / macOS**

```sh
cmake -S . -B build
cmake --build build
./build/Forever-Knights
```

#### **Windows (with Visual Studio / MSVC)**

Open a terminal (x64 Native Tools Command Prompt or PowerShell):

```powershell
cmake -S . -B build
cmake --build build --config Release
.\build\Release\Forever-Knights.exe
```

If you want to debug:

```powershell
cmake --build build --config Debug
.\build\Debug\Forever-Knights.exe
```

#### **Windows (with MinGW + Make)**

```sh
cmake -G "MinGW Makefiles" -S . -B build
cmake --build build
.\build\Forever-Knights.exe
```

---

### 3. Notes

* Always run the game from the project root (`./build/Forever-Knights`) so it can find the `resources/` folder.
* If you add new source files in `src/`, CMake will automatically pick them up.
* If you add new assets, put them in the `resources/` folder and load them in code like:

  ```cpp
  Texture2D knight = LoadTexture("resources/knight.png");
  ```

---

### 🛡️ Tech Stack

* **Language:** C++17
* **Graphics/Audio:** raylib
* **Build System:** CMake

---

### 👥 Team Workflow

* Clone → Create a branch → Code → Commit → Push → Open PR.
* Don’t commit anything in `build/` (already ignored).
* Make sure to pull submodule updates if raylib is updated:

  ```sh
  git submodule update --init --recursive
  ```
