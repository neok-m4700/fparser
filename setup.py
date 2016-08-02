from distutils.core import setup
from setuptools import find_packages


setup(name='fparser',
      version='1.0',
      description='Fortran parser',
      # py_modules=['api', 'Fortran2003', 'readfortran', 'parsefortran'],
      # packages=['fparser']
      packages=find_packages()
      )

# def configuration(parent_package='', top_path=None):
#     from numpy.distutils.misc_util import Configuration
#     config = Configuration('fparser', parent_package, top_path)
#     config.add_data_files('log.config')
#     return config
