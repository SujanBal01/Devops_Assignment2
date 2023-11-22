echo "Running tests..."
python -m unittest discover
echo "Creating deployable application package..."
pip install pyinstaller
pyinstaller --onefile SimplePythonProgram.py
