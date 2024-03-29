all: cv.pdf cv.md cv.txt letter.pdf clean

cv.pdf: cv.tex
	@pdflatex cv.tex
	@pdflatex cv.tex


cv.md:
	@pandoc cv.tex -o cv.md

cv.txt: cv.pdf
	@pdftotext cv.pdf

letter.pdf: letter.tex
	@pdflatex letter.tex
	@pdflatex letter.tex

watch:
	while true; do \
	  make; \
	  sleep 1; \
	done

clean:
	rm -f *.log *.aux *.out
