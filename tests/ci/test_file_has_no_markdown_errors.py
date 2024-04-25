""" dynamic pytest wrapper"""

import glob
import subprocess
import pytest

FILTER = './../../content/**/*.md'
PYTHON_FILES = glob.glob(FILTER, recursive=True)
@pytest.mark.parametrize('filepath', PYTHON_FILES)

def test_file_has_no_markdown_errors(filepath):
    """validate that there are zero markdown warnings against any markdown file"""
    print(F"creating tests for file {filepath}")

    with subprocess.Popen("pymarkdown -d heading-style,first-line-heading,first-line-h1,blanks-around-headers scan "+ filepath, #pylint: disable=line-too-long
                            stdout=subprocess.PIPE, shell=True) as proc:
        (out, _err) = proc.communicate()

     # pylint: disable=C1801
    assert len(out) == 0
