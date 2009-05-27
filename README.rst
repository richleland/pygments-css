Pretty simple stuff here. These css files were generated using pygmentize
on the command line like so::

    pygmentize -S default -f html > default.css

I'm using these on a django project model with the following save method::

    def save(self):
        self.html = markdown(self.body, 'codehilite')
        super(Entry, self).save()