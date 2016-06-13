import sys
from subprocess import call


LEN = len(sys.path)

FILENAME = "pyfiles.list"

with open(FILENAME, "w") as out:
    for idx, path in enumerate(sys.path):
        call(["find", path,
                "-type", "f",
                "-name", "*.py",
                "-o",
                "-name", "*.vpy",
                ], stdout=out)
        print("{0}/{1} done!".format(idx, LEN - 1))


call(["ctags", "--python-kinds=-i", "-L", FILENAME])
