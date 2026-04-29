# PowerShell Utilities

A small collection of personal PowerShell functions and aliases (e.g., `pbcopy`, `pbpaste`)
to improve the command-line experience and bring some macOS-style conveniences to Windows.

## 📦 Installation

### 1. Clone this repository

```powershell
git clone https://github.com/MichaelFoss/ps-tools.git $HOME\.ps-tools
```

---

### 2. Locate your PowerShell profile

PowerShell automatically loads a profile script on startup. To find its path, run:

```powershell
$PROFILE
```

If the file doesn’t exist yet, create it:

```powershell
New-Item -ItemType File -Path $PROFILE -Force
```

---

### 3. Load this repo in your profile

Edit your profile:

```powershell
notepad $PROFILE
```

Add this line:

```powershell
. "$HOME\.ps-tools\init.ps1"
```

> 💡 The dot (`.`) means “source this file into the current session”.

---

### 4. Restart PowerShell

Close and reopen your shell, or reload your profile:

```powershell
. $PROFILE
```

---

## 🚀 Usage

Once installed, your functions are available in any PowerShell session:

```powershell
cat file.txt | pbcopy
pbpaste
```

---

## 📁 Repo Structure

```
ps-tools/
├── README.md
├── init.ps1           # main entry point (dot-source this)
└── scripts/*.ps1      # pbcopy, pbpaste, etc.
```

---

## 🔄 Updating

To get the latest changes:

```powershell
cd $HOME\.ps-tools
git pull
```

Restart PowerShell (or reload your profile):

```powershell
. $PROFILE
```

---

## 🧠 Notes

* Works in Windows PowerShell and PowerShell Core.
* Functions are loaded automatically via your profile.
* You can expand this repo with any custom commands you use frequently.

---

## ✨ Future Ideas

* Prompt customization
* Fuzzy finder integration
* Docker / kubectl shortcuts
* File navigation helpers
