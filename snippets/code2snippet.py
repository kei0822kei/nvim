#!/usr/bin/env python

"""
Stdout snippets from input file.
"""

import argparse


def get_argparse():
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )
    parser.add_argument("--fpath", type=str, help="File path.")
    args = parser.parse_args()
    return args


args = get_argparse()


def main():
    strings = ""
    strings += f'  "title":'
    strings += " {\n"
    strings += f'    "prefix":\n'
    strings += '    "body": [\n'
    with open(args.fpath) as f:
        for line in f.readlines():
            line = line.replace("\n", "").replace('"', '\\"')
            strings += f'      "{line}",\n'
    strings += '      "$0"\n'
    strings += "    ]\n"
    strings += "  }"
    print(strings)


if __name__ == "__main__":
    main()
