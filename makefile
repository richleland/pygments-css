# make sure you already ran pip install -r requirements.txt

# pygments arguments:
# - S is the style, -f is the formmater

cssfiles: clean
	pygmentize -S default -f html > default.css
	pygmentize -S autumn -f html > autumn.css
	pygmentize -S borland -f html > borland.css
	pygmentize -S bw -f html > bw.css
	pygmentize -S colorful -f html > colorful.css
	pygmentize -S default -f html > default.css
	pygmentize -S emacs -f html > emacs.css
	pygmentize -S friendly -f html > friendly.css
	pygmentize -S fruity -f html > fruity.css
	pygmentize -S manni -f html > manni.css
	pygmentize -S monokai -f html > monokai.css
	pygmentize -S murphy -f html > murphy.css
	pygmentize -S native -f html > native.css
	pygmentize -S pastie -f html > pastie.css
	pygmentize -S perldoc -f html > perldoc.css
	pygmentize -S tango -f html > tango.css
	pygmentize -S trac -f html > trac.css
	pygmentize -S vim -f html > vim.css
	pygmentize -S vs -f html > vs.css

.PHONY: clean
clean:
	rm *.css

