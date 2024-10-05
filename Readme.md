How to Compile Python Code to Executable Cython code
1. Install library `pip3 install -r requirements.txt`
2. Create `hello_world.pyx` python file
3. Compile using Compile Using cython --embed: `cython --embed --directive language_level=3 -o hello_world.c hello_world.pyx`
4. Now, you need to compile the generated example.c file into an executable using a C compiler (like gcc on Linux/macOS or clang on macOS).
Linux/macOS
`gcc -o hello_world hello_world.c $(python3-config --cflags --ldflags) -Wno-unreachable-code -lpython3.x`
or, Windows
`cl hello_world.c /I <path-to-python-include> /link /LIBPATH:<path-to-python-libs> python3x.lib`

Replace x with your Python version (e.g., -lpython3.9 for Python 3.9)

5. Run the executable
```
./example  # On Linux/macOS
example.exe  # On Windows
```

