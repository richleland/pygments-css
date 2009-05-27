pygments-css
============

Pygments (http://pygments.org) comes with a set of builtin styles (not css files) for code highlighting (see http://dev.pocoo.org/projects/pygments/browser/pygments/styles). You have to generate a CSS file using the command line. I just figured I'd save someone this work in the future and generate all the CSS files based on the Pygments builtins.

Pretty simple stuff here. These css files were generated using pygmentize
on the command line like so::

    pygmentize -S default -f html > default.css

I'm using a combination of Pygments and Markdown on a django project that has a model with the following save method::

    def save(self):
        self.html = markdown(self.body, 'codehilite')
        super(Entry, self).save()

That's why the CSS styles all have .codehilite in front of them. You should change that to work with the style name that you use for your Pygments HTML output.
