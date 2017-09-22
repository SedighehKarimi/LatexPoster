#Makefile to create posters

TEXMF=/home/roelof/latex//:
TEXINPUTS=/home/roelof/latex//://:

#landscape poster
main1=IGG_template_landscape

#portait poster
#main1=IGG_template_portrait


sub1=IGG_examplebox.tex IGG_examplerefs.tex IGG_compile.tex



latcom=xelatex
latopt=-halt-on-error



#all: ${main1}.bbl ${main1}.pdf
all: ${main1}.bbl ${main1}.pdf

#make rules for results poster

${main1}.pdf: ${main1}.tex ${sub1}
	${latcom} ${latop} ${main1}

${main1}.aux: ${main1}.tex ${sub1}
	${latcom} ${latop} ${main1}

${main1}.bbl:${main1}.aux
	bibtex ${main1}
	${latcom} ${latop} ${main1}	


clean:
	rm -f ${main1}.bbl ${main1}.pdf
