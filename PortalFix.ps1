# Define color variables
$ErrorColour = "Red"
$PassColour = "Green"

# ASCII Art and Descriptions
$asciiArt = @"
 ___   ___   ___  _____   __    _         ____  _   _    
| |_) / / \ | |_)  | |   / /\  | |       | |_  | | \ \_/ 
|_|   \_\_/ |_| \  |_|  /_/--\ |_|__     |_|   |_| /_/ \ 
"@

$githubText = @"
    GitHub: DeadDove13

"@

$description = @"
This script checks if the Microsoft.UI.Xaml.2.7 package is installed and installs it if missing. 
This should fix the MS store and the Company Portal.

"@

# Display ASCII Art, Description, and GitHub info
Write-Host $asciiArt -ForegroundColor Cyan
Write-Host $githubText -ForegroundColor $PassColour
Write-Host $description -ForegroundColor Yellow

# Function to run the main script logic
function Main {
    # Define the package name
    $packageName = "Microsoft.UI.Xaml.2.7"
    
    # Define the path to the appx package (assumes it's in the same folder as this script)
    $appxPath = Join-Path -Path $PSScriptRoot -ChildPath "microsoft.ui.xaml.2.7.3\tools\AppX\x64\Release\Microsoft.UI.Xaml.2.7.appx"

    # Verify that the script is running with admin privileges
    if (-not [Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator) {
        Write-Host "This script must be run as an administrator!" -ForegroundColor $ErrorColour
        Read-Host -Prompt "Press Enter to exit"
        Exit
    }

    # Check if the package is already installed
    $package = Get-AppxPackage -Name $packageName -AllUsers

    if (-not $package) {
        Write-Output "$packageName is not installed. Installing..."

        # Ensure the path exists before attempting to install
        if (Test-Path $appxPath) {
            try {
                # Install the package
                Add-AppxPackage -Path $appxPath
                Write-Output "$packageName installation complete." -ForegroundColor $PassColour
            }
            catch {
                Write-Error "Failed to install $packageName. Error: $_"
            }
        } else {
            Write-Error "The specified path for $packageName does not exist: $appxPath"
        }
    } else {
        Write-Output "$packageName is already installed." -ForegroundColor $PassColour
    }

    # Confirm installation
    $package = Get-AppxPackage -Name $packageName -AllUsers
    if ($package) {
        Write-Output "$packageName is successfully installed." -ForegroundColor $PassColour
    } else {
        Write-Output "Failed to confirm installation of $packageName." -ForegroundColor $ErrorColour
    }

    # Wait for user input before closing
    Write-Output "Press Enter to close..."
    Read-Host
}

# Prompt the user to press 1 to run the script or 0 to close
do {
    $choice = Read-Host "Press 1 to run the script or 0 to close"

    # Execute based on user's choice
    if ($choice -eq "1") {
        Main
        break
    }
    elseif ($choice -eq "0") {
        Write-Host "Exiting the script." -ForegroundColor White
        Exit
    }
    else {
        Write-Host "B R U H!!! Invalid input. Please try again." -ForegroundColor $ErrorColour
    }
} while ($true)

# Wait for the user to press Enter before exiting
Read-Host -Prompt "Press Enter to exit"