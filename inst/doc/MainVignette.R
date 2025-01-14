## -----------------------------------------------------------------------------
# or install.packages("DescriptiveRepresentation")
# install.packages("remotes")  # Install remotes if not already installed
# remotes::install_github("cjerzak/DescriptiveRepresentation-software/DescriptiveRepresentation")
library(DescriptiveRepresentationCalculator)

## -----------------------------------------------------------------------------
# Suppose the population is split into 3 groups: 25%, 50%, 25%.
# We have a political body (say, a legislature) of size 50.

PopShares_example <- c(1/4, 2/4, 1/4)
BodySize_example <- 50

ExpectedRep <- ExpectedRepresentation(
  PopShares = PopShares_example,
  BodyN = BodySize_example
)

ExpectedRep
#> Prints the expected representation under random sampling

## -----------------------------------------------------------------------------
# Observed scenario: A 6-seat body with members: "A", "A", "C", "A", "C", "A"
# The population shares are: A=1/4, B=2/4, C=1/4.

ObsRep <- ObservedRepresentation(
  BodyMemberCharacteristics = c("A","A","C","A","C","A"),
  PopShares = c("A"=0.25, "B"=0.50, "C"=0.25)
)

ObsRep
#> Prints the observed representation index

## -----------------------------------------------------------------------------
SDRep <- SDRepresentation(
  PopShares = c(0.25, 0.50, 0.25),
  BodyN = 50,
  nMonte = 10000
)

SDRep
#> Prints the residual standard deviation

