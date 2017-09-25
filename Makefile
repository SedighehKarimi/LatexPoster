#Makefile to create posters

#main poster tempalte
main1=IGG_template
preamble=IGG_posterpreamble.tex


sub1=IGG_examplebox.tex IGG_examplerefs.tex IGG_compile.tex



latcom=xelatex
#uncoment pdflatex below if no xelatex is available
#latcom=pdflatex

latopt=-halt-on-error

#default for make without arguments is to make a landscape poster
all: landscape

#set some symbolic links to the correct shape and default background image
setportrait:
		ln -sf IGG_posterpreamble_portrait.tex ${preamble}
		ln -sf posterbackground_hires_portrait.pdf figures/posterbackground_hires.pdf

setlandscape:
		ln -sf IGG_posterpreamble_landscape.tex ${preamble}
		ln -sf posterbackground_hires_landscape.pdf figures/posterbackground_hires.pdf

portrait:setportrait ${main1}.bbl ${main1}.pdf

landscape:setlandscape ${main1}.bbl ${main1}.pdf

#make rules for results poster

${main1}.pdf: ${main1}.tex ${preamble} ${sub1}
	${latcom} ${latop} ${main1}

${main1}.aux: ${main1}.tex ${sub1}
	${latcom} ${latop} ${main1}

${main1}.bbl:${main1}.aux
	bibtex ${main1}
	${latcom} ${latop} ${main1}	


clean:
	rm -f ${main1}.bbl ${main1}.pdf ${preamble} figures/posterbackground_hires.pdf
