# Basic use, ordered by freq and degree

library(UpSetR)
require(ggplot2); require(plyr); require(gridExtra); require(grid);


#library(Rcpp)
input <- function(inputfile) {
  #	  parameters <<- read.table(inputfile, as.is=T);
  #rownames(parameters) <<- parameters[,1];
  #dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
  #source("RPluMA.R")
  #  pfix = prefix()
  #if (length(pfix) != 0) {
  #   pfix <- paste(pfix, "/", sep="")
  #}
  #infile <<- paste(pfix, toString(parameters["csvfile", 2]), sep="/")
  #nsets <<- as.integer(parameters["nsets", 2])
  #nintersects <<- as.integer(parameters["nintersects", 2])
  #mydata <<- read.csv(infile,  header=TRUE, sep="," )
  #print(infile)
  #print(nsets)
  #print(nintersects)
}

run <- function() {
	print(sessionInfo())
	mydata <- read.csv("plugins/UpSetR/example/movies.csv", header=TRUE, sep=",")
  yy <- upset(mydata, nsets = 7, nintersects = 30, mb.ratio = c(0.5, 0.5),
          order.by = c("freq", "degree"), decreasing = c(TRUE,FALSE))
  #ggsave("output.pdf")
}

output <- function(outputfile) {
  ggsave(outputfile, width=300, height=300, limitsize=FALSE)
}

#input("plugins/UpSetR/example/parameters.txt")
#run()
#output("plugins/UpSetR/example/output.pdf")
