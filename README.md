# Introduction to R: One Day Workshop
# Workshop Materials

* Download workshop materials and unzip them to a folder on your computer:
  https://github.com/jeromyanglim/introduction-to-r-one-day-workshop/archive/master.zip
* Once you have installed the software below, the workshop files include a file
  called "check-r-installation.r". If you open that file in RStudio and run the
  commands, you can check whether your basic installation has completed
  successfully. If you have any issues, let us know at the start of the
  workshop.

# Install R and R Studio (Essential)
These instructions assume that you have already installed R and RStudio.
If you have not already done this, go to the following sites.

* R: http://cran.rstudio.com/
* Rstudio: http://www.rstudio.com/products/RStudio/

If you have trouble installing R and Rstudio, then [check out these additional
instructions](http://jeromyanglim.tumblr.com/post/122207626236/installing-r-and-rstudio)

# Install RTools if on Windows OS
Also, if you use Windows, download and install RTools for Windows.
Choose a version that matches your version of R (you can see this when you start
R Studio). http://cran.r-project.org/bin/windows/Rtools
 
# Install Additional R Packages (Essential)
Open R Studio and paste the following text into the console. This should take
several minutes to complete. Don't worry if the odd package doesn't 
install.

    install.packages("knitr", dep = T)
    install.packages("ProjectTemplate", dep = T)
    install.packages("MASS", dep = T)
    install.packages("psych", dep = T)
    install.packages("stringr", dep = T)
    install.packages("gdata", dep = T)
    install.packages("gtools", dep = T)
    install.packages("xtable", dep = T)
    install.packages("GPArotation", dep = T)
    install.packages("nFactors", dep = T)
    install.packages("vegan", dep = T)
    install.packages("digest", dep = T)
    install.packages("xlsx", dep = T)
    install.packages("readxl", dep = T)
    install.packages("foreign", dep = T)
    install.packages("lattice", dep = T)
    install.packages("ggplot2", dep = T)
    install.packages("lme4", dep = T)
    install.packages("QuantPsyc", dep = T)
    install.packages("sem", dep = T)
    install.packages("lavaan", dep = T)
    install.packages("metafor", dep = T)
    install.packages("boot", dep = T)
    install.packages("car", dep = T)
    install.packages("AER", dep = T)
    install.packages("devtools", dep = T)
    install.packages("DAAG", dep = T)
    install.packages("plyr", dep = T)
    install.packages("tidyr", dep = T)
    install.packages("dplyr", dep = T)
    install.packages("GGally", dep = T)
    install.packages("Rcmdr", dep = T)
    install.packages("lmtest", dep = T)
    install.packages("markdown", dep = T)
    install.packages("bootstrap", dep = T)
    install.packages("hypergeo", dep = T)
    install.packages("Hmisc", dep = T)
    install.packages("lmSupport", dep = T)
    install.packages("perturb", dep = T)
    install.packages("CTT", dep = T)

    library(devtools)
    install_github('jeromyanglim/personalityfacets')
    install_github('leeper/rio')


# Additional Installations (Optional)
R sometimes makes use of other free software packages to provide additional
functionality.
Thus, if you have time, you may wish to install the additional software listed
below.

## Windows and Perl
If you are on Windows, there is one function in the Workshop that requires that
you have Perl installed. https://www.perl.org/get.html

## Mac OSX Operating System
If you use Mac OSX :

* Download and install XQuartz: http://xquartz.macosforge.org/landing/
* You may find it useful to have XCode installed: http://developer.apple.com/xcode

## R Commander
In the workshop, I may demonstrate the program R Commander.

You can check that the installation above worked by typing the following into the console.

    library(Rcmdr)

You should get an additional R Commander window pop up with menus like Graphs,
Models, etc.

If it does not work, then you may wish to read the installation notes to see
what additional software you may need to install:

http://socserv.mcmaster.ca/jfox/Misc/Rcmdr/installation-notes.html
 

## Java
If it's not on your system already, you may also wish to install Java.

http://www.oracle.com/technetwork/java/javase/downloads/index.html
 

## LaTeX
I may give a demonstration of using LaTeX with R. 
Some R programs that generate PDFs also require a LaTeX distribution to be
installed. 

http://latex-project.org/ftp.html

Be warned, it is a big download (more than a gigabyte).



