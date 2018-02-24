KANJI = -kanji=utf8
FONTMAP = -f ipaex.map -f uptex-ipaex.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all:
	echo Nothing to be built.

.PHONY: install
install:
	mkdir -p ${TEXMF}/doc/uptex/uptex-base
	cp ./LICENSE ${TEXMF}/doc/uptex/uptex-base/
	cp ./README.md ${TEXMF}/doc/uptex/uptex-base/
	cp ./*.txt ${TEXMF}/doc/uptex/uptex-base/
	cp ./Makefile ${TEXMF}/doc/uptex/uptex-base/
	mkdir -p ${TEXMF}/doc/uptex/uptex-base/samples
	cp ./samples/* ${TEXMF}/doc/uptex/uptex-base/samples/
	mkdir -p ${TEXMF}/tex/uptex/uptex-base
	cp ./uptex.tex ${TEXMF}/tex/uptex/uptex-base/
	cp ./ukinsoku.tex ${TEXMF}/tex/uptex/uptex-base/
	cp ./*.ini ${TEXMF}/tex/uptex/uptex-base/
	cp ./euptex.src ${TEXMF}/tex/uptex/uptex-base/
