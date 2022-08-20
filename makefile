# make sure you already ran pip install -r requirements.txt
#
# syntax
# pygmentize -S <style> -f <formatter> [-a <arg>] [-O <options>] [-P <option=value>]
# (pygmentize documentation is pretty scattered and confusing, but the "-a" will add other classes
# to the output)

STYLES := $(shell python3 -c "from pygments.styles import get_all_styles; print(\"\n\".join(list(get_all_styles())))")

# a recursively-expanding variable, so that its value contains an actual function call to be
# re-expanded under the control of foreach
gen_html = pygmentize -S $(style) -f html -a .highlight > $(style).css;

cssfiles:
	@$(foreach style, $(STYLES), $(gen_html))
