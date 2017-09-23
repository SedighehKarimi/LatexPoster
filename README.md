# Latex Poster template for IGG posters

This repository contains a set of latex files, a makefile script and some default logos needed to create a latex poster in A0 landscape or Portrait format. The poster attempts to adhere to the Uni Bonn corporate design.

## Prerequisites

* A working xelatex installation (in theory pdflatex would work as well buth no fancy exo2 fonts can then be used)
* The program Make (a Makefile is added for convenience)
* Installed [Carlito](https://fontlibrary.org/en/font/carlito) and [Exo2](https://fonts.google.com/specimen/Exo+2) fonts



## Building a Poster in landscape format

### Clone the repository and copy the files to a local directory
    git clone https://gitlab.igg.uni-bonn.de/roelof/IGGlatexposter.git
    cp -r IGGlatexposter Confposter20XX
    cd Confposter20xx/

### Adapt the main file and Makefile
    mv IGG_template.tex ConfPosterAuthor20xx.tex
and change in the [Makefile](Makefile): `` main1=ConfPosterAuthor20xx``

### Add new content boxes and tweak their positions 
The template has some example boxes which demonstrates you how new content can be added.
New plots and logos should be added to the folder [figures](figures).

### Run Make in the new folder
    make landscape
or just 
    make
(and repeat untill you get the positions right)

## Building a Poster in Portrait format
Same as above but you run
    make portrait








