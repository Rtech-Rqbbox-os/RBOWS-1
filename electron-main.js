const { app, BrowserWindow, Menu, globalShortcut, Tray, ipcMain } = require('electron');
const path = require('path');

let mainWindow = null;
let tray = null;
let isDev = process.argv.includes('--dev');

function createWindow() {
  mainWindow = new BrowserWindow({
    width: 1920,
    height: 1080,
    frame: false,
    fullscreen: true,
    kiosk: true,
    autoHideMenuBar: true,
    backgroundColor: '#000000',
    icon: path.join(__dirname, 'build', 'icon.ico'),
    webPreferences: {
      nodeIntegration: false,
      contextIsolation: true,
      sandbox: false
    },
    titleBarStyle: 'hidden'
  });

  mainWindow.loadFile('index.html');

  mainWindow.on('closed', () => {
    mainWindow = null;
  });

  mainWindow.on('ready-to-show', () => {
    mainWindow.show();
  });

  if (isDev) {
    mainWindow.webContents.openDevTools({ mode: 'detach' });
  }
}

function createTray() {
  tray = new Tray(path.join(__dirname, 'build', 'icon.ico'));
  const contextMenu = Menu.buildFromTemplate([
    {
      label: 'RBOWS 1',
      enabled: false
    },
    { type: 'separator' },
    {
      label: 'Toggle Fullscreen',
      click: () => {
        if (mainWindow) {
          if (mainWindow.isFullScreen()) {
            mainWindow.setFullScreen(false);
          } else {
            mainWindow.setFullScreen(true);
          }
        }
      }
    },
    {
      label: 'Toggle DevTools',
      click: () => {
        if (mainWindow) {
          mainWindow.webContents.toggleDevTools();
        }
      }
    },
    { type: 'separator' },
    {
      label: 'Quit',
      click: () => {
        app.quit();
      }
    }
  ]);

  tray.setToolTip('RBOWS 1');
  tray.setContextMenu(contextMenu);

  tray.on('double-click', () => {
    if (mainWindow) {
      mainWindow.show();
      mainWindow.focus();
    }
  });
}

// Prevent multiple instances
const gotTheLock = app.requestSingleInstanceLock();
if (!gotTheLock) {
  app.quit();
} else {
  app.on('second-instance', () => {
    if (mainWindow) {
      if (mainWindow.isMinimized()) mainWindow.restore();
      mainWindow.show();
      mainWindow.focus();
    }
  });
}

app.whenReady().then(() => {
  createWindow();
  createTray();

  globalShortcut.register('F11', () => {
    if (mainWindow) {
      if (mainWindow.isFullScreen()) {
        mainWindow.setFullScreen(false);
      } else {
        mainWindow.setFullScreen(true);
      }
    }
  });

  globalShortcut.register('CommandOrControl+G', () => {
    if (mainWindow) {
      mainWindow.webContents.send('toggle-gamebar');
    }
  });

  globalShortcut.register('Escape', () => {
    if (mainWindow && mainWindow.isFullScreen()) {
      mainWindow.setFullScreen(false);
    }
  });
});

app.on('window-all-closed', () => {
  app.quit();
});

app.on('will-quit', () => {
  globalShortcut.unregisterAll();
});

app.on('activate', () => {
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow();
  }
});
