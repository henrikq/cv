all: cv.pdf cv.md cv.txt clean

cv.pdf: cv.tex
	@pdflatex cv.tex
	@pdflatex cv.tex


cv.md: cv.tex
	@pandoc cv.tex -o cv.md

cv.txt: cv.pdf
	@pdftotext cv.pdf

clean:
	rm -f *.log *.aux *.out
