import os
import sys
import platform
import rc_resources

from PySide6.QtCore import QUrl
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

if __name__ == "__main__":
    os_platform = platform.system()
    if os_platform == "Windows" or os_platform == "Darwin":
        raise ValueError("Unsupported platform, Puffin Mod Manager only supports Linux")

    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    engine.addImportPath("qrc:/puffin/ui/")
    engine.loadFromModule("Puffin", "MainWindow")

    # Check if the QML file was loaded correctly
    if not engine.rootObjects():
        print("Failed to load QML file.")
        sys.exit(-1)

    sys.exit(app.exec())
