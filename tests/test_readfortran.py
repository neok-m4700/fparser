from fparser import readfortran

if __name__ == "__main__":
    for func in [
        'test_pyf',
        'test_fix90',
        'test_f77',
        'profile_main',
        'simple_main'
    ]:
        getattr(readfortran, func)()
