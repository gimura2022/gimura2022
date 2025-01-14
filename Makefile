RM = rm -rf

.PHONY: all
all: README

.PHONY: clear
clear:
	$(RM) README

README: gimura.7
	mandoc $< | col -b > $@
