# PortalFix

**PortalFix** is a PowerShell script designed to check if the `Microsoft.UI.Xaml.2.7` package is installed. If the package is missing, the script installs it to ensure the functionality of the Microsoft Store and Company Portal. The script runs with administrative privileges through the included batch file.

---

## Files

- **PortalFix.ps1**: The main PowerShell script that checks for and installs `Microsoft.UI.Xaml.2.7` if it's not present.
- **Run.bat**: A batch file to run `PortalFix.ps1` as an administrator. This should be placed in the same directory as `PortalFix.ps1`.

---

## How to Use

1. **Download or clone this repository** and place `PortalFix.ps1` `Run.bat` and the `microsoft.ui.xaml.2.7.3` folder in the same directory.

2. **Run the Script**:

   - Double-click `Run.bat` to execute `PortalFix.ps1` with elevated privileges.
   - The script will check if `Microsoft.UI.Xaml.2.7` is installed. If missing, it will proceed with the installation.

3. **Follow the Prompts**:
   - You will be prompted to start the script or exit.
   - Once the process completes, press **Enter** to close the script.

---

## Alternative Solution

If this script does not resolve issues with the Microsoft Store or Company Portal, a guide on how to fix `Microsoft.UI.Xaml.2.7` can be found [here](https://answers.microsoft.com/en-us/windows/forum/all/what-is-microsoftuixaml27-and-why-dont-i-have-it/9e5753be-3b5f-4975-ac00-a28344c710a6).

---

## Use Case

This script is designed for situations where Intune management might overlook certain dependencies required by applications like the Microsoft Store and the Company Portal. Specifically, it installs the **Microsoft.UI.Xaml.2.7** package, a UI component essential for these applications to run. If this package is missing, the Microsoft Store or Company Portal may not run.

Running this script ensures that the **Microsoft.UI.Xaml.2.7** package is installed, preventing such issues and maintaining a smooth user experience on Intune-managed devices.

---

## GitHub

- [DeadDove13](https://github.com/DeadDove13)
