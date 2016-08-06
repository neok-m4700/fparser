from fparser import Fortran2003
from fparser.api import parse

# f03 = Fortran2003.Base()

with open('preprocessor.f90') as f:
    code = f.read()

tree = parse(code)

print(tree)
