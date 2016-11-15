all: cv.pdf clean

cv.pdf: cv.tex
	@pdflatex cv.tex	
	@pdflatex cv.tex	

clean:
	rm -f *.log *.aux *.out
