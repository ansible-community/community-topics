#!/usr/bin/env python3
import sys
from pathlib import Path

HAS_PYPERCLIP = False
try:
    import pyperclip
except ImportError:
    pass
else:
    HAS_PYPERCLIP = True


def main():
    path = Path(__file__).resolve().parent.joinpath("meeting-people.txt")
    with path.open(encoding="utf-8") as fp:
        people = sorted(
            [
                person
                for line in fp
                if (person := line.strip()) and not line.startswith("#")
            ]
        )
    message = "{}: The Ansible community meeting is starting now!".format(
        ", ".join(people)
    )
    message += (
        "\nThe ping list is stored at https://kutt.it/meeting-people."
        " Feel free to add or remove yourself."
    )
    print(message)
    if HAS_PYPERCLIP and "-c" in sys.argv[1:]:
        pyperclip.copy(message)


if __name__ == "__main__":
    main()
