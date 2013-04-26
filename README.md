LLML
====

Lisp-like Markup Language

LLML is an experimental templating language with a lisp-like syntax. It
has grown from an increasing frustration with HAML, particularly its
use of significant whitespace and the effect that has on the ability to
wrap long lines elegantly and to resolve merge conflicts.

Examples
--------

    (html
      (head
        (title= @title) ; One alternative
        (title @title)) ; Another alternative
      (body
        (h1 "This is a test")
        (p This is a very long paragraph that contains quite a bit of text
           that needs to be interpreted as a string, although I don't know
           if that will be done without quotes, or using single, double or
           triple double quotes.)))
