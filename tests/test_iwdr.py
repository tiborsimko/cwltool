import unittest

import cwltool
import cwltool.factory
from .util import get_data, get_windows_safe_factory


class TestInitialWorkDir(unittest.TestCase):

    def test_newline_in_entry(self):
        """
        test that files in InitialWorkingDirectory are created with a newline character
        """
        f = get_windows_safe_factory()
        echo = f.make(get_data("tests/wf/iwdr-entry.cwl"))
        self.assertEqual(echo(message="hello"), {"out": "CONFIGVAR=hello\n"})
