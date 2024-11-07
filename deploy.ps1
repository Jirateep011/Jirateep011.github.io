# Stop on errors
$ErrorActionPreference = "Stop"

# Navigate into the vue-project directory
Set-Location -Path "vue-project"

# Build the project
npm run build

# Navigate into the build output directory
Set-Location -Path "dist"

# Initialize a new git repository
& 'C:\Program Files\Git\bin\git.exe' init
& 'C:\Program Files\Git\bin\git.exe' add -A
& 'C:\Program Files\Git\bin\git.exe' commit -m 'deploy'
& 'C:\Program Files\Git\bin\git.exe' branch -M main

# Push to GitHub Pages
& 'C:\Program Files\Git\bin\git.exe' push -f git@github.com:Jirateep011/Jirateep011.github.io.git main:gh-pages

# Return to the original directory
Set-Location -Path "../.."