# make sure you already ran pip install -r requirements.txt
#
# syntax
# pygmentize -S <style> -f <formatter> [-a <arg>] [-O <options>] [-P <option=value>]
# (pygmentize documentation is pretty scattered and confusing, but the "-a" will add other classes
# to the output)

STYLES = abap
STYLES += algol
STYLES += algol_nu
STYLES += arduino
STYLES += autumn
STYLES += borland
STYLES += bw
STYLES += colorful
STYLES += default
STYLES += emacs
STYLES += friendly
STYLES += fruity
STYLES += gruvbox-dark
STYLES += gruvbox-light
STYLES += igor
STYLES += inkpot
STYLES += lovelace
STYLES += manni
STYLES += material
STYLES += monokai
STYLES += murphy
STYLES += native
STYLES += paraiso-dark
STYLES += paraiso-light
STYLES += pastie
STYLES += perldoc
STYLES += rainbow_dash
STYLES += rrt
STYLES += sas
STYLES += solarized-dark
STYLES += solarized-light
STYLES += stata
STYLES += stata-dark
STYLES += stata-light
STYLES += tango
STYLES += trac
STYLES += vim
STYLES += vs
STYLES += xcode
STYLES += zenburn

# a recursively-expanding variable, so that its value contains an actual function call to be
# re-expanded under the control of foreach
gen_html = pygmentize -S $(style) -f html -a .highlight > $(style).css;

cssfiles:
	@$(foreach style, $(STYLES), $(gen_html))
