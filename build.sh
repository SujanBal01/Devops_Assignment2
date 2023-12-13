Write-Host "Running tests..."

python -m unittest test.py

if ($LASTEXITCODE -eq 0) {
    Write-Host "Tests passed. Creating deployable application package..."

    pip install pyinstaller
    pyinstaller --onefile Addition.py
} else {
    Write-Host "Tests failed. Fix the issues before creating the application package."
    exit 1
}
