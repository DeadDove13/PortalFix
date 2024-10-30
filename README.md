# PortalFix

**PortalFix** is a PowerShell script designed to check if the `Microsoft.UI.Xaml.2.7` package is installed. If the package is missing, the script installs it to ensure the functionality of the Microsoft Store and Company Portal. The script runs with administrative privileges through the included batch file.

---

## Files

- **PortalFix.ps1**: The main PowerShell script that checks for and installs `Microsoft.UI.Xaml.2.7` if it's not present.
- **Run.bat**: A batch file to run `PortalFix.ps1` as an administrator. This should be placed in the same directory as `PortalFix.ps1`.

---

## How to Use

1. **Download or clone this repository** and place both `PortalFix.ps1` and `Run.bat` in the same directory.

2. **Run the Script**:

   - Double-click `Run.bat` to execute `PortalFix.ps1` with elevated privileges.
   - The script will check if `Microsoft.UI.Xaml.2.7` is installed. If missing, it will proceed with the installation.

3. **Follow the Prompts**:
   - You will be prompted to start the script or exit.
   - Once the process completes, press **Enter** to close the script.

---

## GitHub

- [DeadDove13](https://github.com/DeadDove13)

---

## Description

This script checks if the `Microsoft.UI.Xaml.2.7` package is installed and installs it if missing. This should fix issues with the MS Store and the Company Portal.
