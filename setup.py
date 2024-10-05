from setuptools import Extension, setup
from Cython.Build import cythonize

ext_modules = [
    Extension(
        name="hello_world",
        sources=["hello_world.pyx"],
        extra_compile_args=["-O2"],
    )
]

setup(
    name="hello_world",
    ext_modules=cythonize(ext_modules, compiler_directives={'language_level': "3"}),
)
