\name{gen.vc}
\alias{gen.vc}
\title{Simula una variabile casuale discreta}
\description{
  Questa funzione permette di simulare un valore da una variabile
  casuale discreta con distribuzione di probabilita' assegnata.
}
\usage{
gen.vc(x,p)
}
\arguments{
  \item{x}{valori assumibili dalla variabile casuale}
  \item{p}{distribuzione di probabilita'}
}
\details{
  La funzione restituisce un numero casuale.
}
\examples{
x <- c(-2,3,7,10,12)
p <- c(0.2, 0.1, 0.4, 0.2, 0.1) 
y <- NULL
for(i in 1:1000) y <- c(y,gen.vc(x,p))
table(y)/length(y)
}
\keyword{distribution}
