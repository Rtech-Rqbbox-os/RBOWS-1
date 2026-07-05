<div align="center">
  <img src="https://rtech-rqbbox-os.github.io/RBOWS-1/icon.svg" alt="RBOWS 1" width="120">
  <br><br>
  <h1>RBOWS 1</h1>
  <p><strong>Windows 10-compatible desktop environment for the RQBBOX OS ecosystem.</strong></p>
  <p><strong>Everything works.</strong></p>
  <br>
  <p>
    <img src="https://img.shields.io/badge/version-10.0.26220-0078d4?style=flat-square" alt="Version">
    <img src="https://img.shields.io/badge/size-~25KB-00ff88?style=flat-square" alt="Size">
    <img src="https://img.shields.io/badge/dependencies-0-ff0080?style=flat-square" alt="Dependencies">
    <img src="https://img.shields.io/badge/apps-10+-8844ff?style=flat-square" alt="Apps">
    <img src="https://img.shields.io/badge/license-MIT-ffdd00?style=flat-square" alt="License">
  </p>
  <br>
  <p>
    <a href="https://rtech-rqbbox-os.github.io/RBOWS-1/">LIVE DEMO</a> · 
    <a href="https://github.com/Rtech-Rqbbox-os/RBOWS-1">SOURCE CODE</a> · 
    <a href="https://github.com/Rtech-Rqbbox-os/RQBBOX-MODE">RQBBOX MODE</a>
  </p>
</div>

---

## What is RBOWS 1?

RBOWS 1 is a fully functional Windows 10 desktop environment that runs in the browser. It's not a mockup — **everything works**. Open apps, manage files, use the terminal, browse the web, change settings. It's the operating system layer of the RQBBOX OS ecosystem.

No frameworks. No dependencies. No server. Just open `index.html` and you have a desktop.

---

## Features

<table>
  <tr>
    <td width="33%" align="center"><b>🖥️ Desktop</b><br><sub>Wallpaper, icons, right-click menus, snap-to-edge</sub></td>
    <td width="33%" align="center"><b>📋 Taskbar</b><br><sub>Start menu, search, system tray, clock, Action Center</sub></td>
    <td width="33%" align="center"><b>🪟 Window Manager</b><br><sub>Drag, resize, minimize, maximize, close, snap</sub></td>
  </tr>
  <tr>
    <td width="33%" align="center"><b>📁 File Explorer</b><br><sub>Virtual file system, sidebar, context menus</sub></td>
    <td width="33%" align="center"><b>💻 Terminal</b><br><sub>Full CLI with 20+ commands, tab completion</sub></td>
    <td width="33%" align="center"><b>⚙️ Settings</b><br><sub>7 categories, toggles, dropdowns, display options</sub></td>
  </tr>
  <tr>
    <td width="33%" align="center"><b>📝 Notepad</b><br><sub>Text editor with menu, status bar, word count</sub></td>
    <td width="33%" align="center"><b>🔢 Calculator</b><br><sub>Standard calculator with all operations</sub></td>
    <td width="33%" align="center"><b>🌐 Browser</b><br><sub>iframe-based web browser with URL bar</sub></td>
  </tr>
  <tr>
    <td width="33%" align="center"><b>🔔 Notifications</b><br><sub>Toast notifications, Action Center with quick toggles</sub></td>
    <td width="33%" align="center"><b>🌤️ Weather</b><br><sub>7-day forecast with conditions</sub></td>
    <td width="33%" align="center"><b>🛒 Store</b><br><sub>Featured apps, categories, install buttons</sub></td>
  </tr>
</table>

---

## Built-in Apps

| App | Icon | Description |
|-----|------|-------------|
| **File Explorer** | 📁 | Browse the virtual file system with sidebar, context menus, and file operations |
| **Notepad** | 📝 | Text editor with menu bar, line/column counter |
| **Calculator** | 🔢 | Standard calculator with memory, percent, square root, inverse |
| **Terminal** | 💻 | Command prompt with 20+ commands (dir, cd, echo, type, mkdir, etc.) |
| **Edge** | 🌐 | Web browser with URL bar, back/forward, and iframe sandboxing |
| **Settings** | ⚙️ | 7 categories: System, Devices, Personalization, Apps, Accounts, Privacy, Update |
| **Weather** | 🌤️ | 7-day forecast with temperature, humidity, wind |
| **Store** | 🛒 | Featured apps and categories |
| **Photos** | 🖼️ | Placeholder gallery |
| **Music** | 🎵 | Placeholder music player |

---

## Terminal Commands

```
dir / ls        List directory contents
cd              Change directory
cls / clear     Clear screen
echo            Display text
type / cat      Display file contents
mkdir           Create directory
del / rm        Delete file
time            Display current time
date            Display current date
ver             Display version
whoami          Display current user
hostname        Display computer name
ipconfig        Display network config
tasklist        Display running processes
systeminfo      Display system information
help            Show all commands
exit            Close terminal
```

---

## Window Management

- **Drag** — Click and drag the title bar to move windows
- **Resize** — Drag any edge or corner to resize
- **Minimize** — Click the minimize button or taskbar icon
- **Maximize** — Click the maximize button or double-click the title bar
- **Close** — Click the X button
- **Snap** — Drag to screen edges: left/right = 50% split, top = maximize
- **Show Desktop** — Click the thin bar at the bottom-right of the taskbar

---

## Architecture

```
rbows1/
├── index.html          # Complete OS (~25KB, zero dependencies)
├── README.md           # This file
└── icon.svg            # RBOWS logo
```

The entire desktop environment is a **single HTML file** — vanilla HTML5 + CSS3 + JavaScript (ES6). No frameworks, no build tools, no external dependencies. Just open it in any modern browser.

### What's inside

| Layer | Description |
|-------|-------------|
| **CSS** | Windows 10-accurate dark theme with CSS variables, transitions, grid layouts |
| **HTML** | Desktop shell, taskbar, Start menu, window container, Action Center, context menus |
| **VFS** | Virtual file system with directories, files, read/write/delete operations |
| **Terminal** | Full command interpreter with 20+ built-in commands |
| **Window Manager** | Drag, resize, minimize, maximize, close, snap-to-edge, focus management |
| **Apps** | 10 built-in applications with full UI and functionality |

---

## How it works

1. **Boot** — Animated loading bar with Windows logo
2. **Lock screen** — Time, date, click to sign in
3. **Desktop** — Icons, wallpaper, taskbar ready
4. **Start menu** — Pinned tiles for all apps, power button, user profile
5. **Open apps** — Double-click desktop icons or use Start menu
6. **Window management** — Full drag, resize, snap, minimize/maximize/close
7. **File system** — Virtual C: drive with Users, Program Files, Windows directories
8. **Terminal** — Full CLI experience with command history and tab completion
9. **Action Center** — Notifications, quick toggles, brightness slider

---

## Part of RQBBOX OS

RBOWS 1 is the desktop environment layer of the RQBBOX OS ecosystem:

| Component | Description |
|-----------|-------------|
| **[RQBBOX MODE](https://github.com/Rtech-Rqbbox-os/RQBBOX-MODE)** | Xbox-style gaming dashboard (Electron app) |
| **[RQBBOX LIFE](https://github.com/Rtech-Rqbbox-os/rqbbox-life)** | Life simulation game |
| **RBOWS 1** | Windows 10 desktop environment |
| **[RQBBOX OS](https://rtech-rqbbox-os.github.io/RQBBOX-MODE/)** | The full ecosystem |

---

## License

**© 2026 RhysTech. All rights reserved.**  RQBBOX&reg;, RQBBOX MODE&trade;, RBOWS&trade;, RQBBOX LIFE&trade; RhysTech.

<div align="center">
  <br>
  <sub><b>RBOWS</b> — Everything works.</sub>
  <br><br>
</div>
