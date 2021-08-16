from ptpython.repl import PythonRepl

__all__ = ["configure"]


def configure(repl: PythonRepl):
    repl.show_signature = True
    repl.show_docstring = True
    repl.enable_fuzzy_completion = True
    repl.enable_dictionary_completion = True
    repl.enable_mouse_support = True
    repl.highlight_matching_parenthesis = True
