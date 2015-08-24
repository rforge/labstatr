\name{ic.var}
\alias{ic.var}
\title{Calcola intervallo di confidenza per la varianza}
\description{
  Questa funzione effettua il calcolo dell'intervallo di
  confidenza per la varianza di campione gaussiano.
}
\usage{
ic.var(x, twosides = TRUE, conf.level = 0.95)
}
\arguments{
  \item{x}{vettore di dati}
  \item{twosides}{logico. Se \code{FALSE} l'estremo inferiore e' posto pari a 0}
  \item{conf.level}{livello confidenza}
}
\examples{
x <- c(0.39, 0.68, 0.82, 1.35, 1.38, 1.62, 1.70,
       1.71, 1.85, 2.14, 2.89, 3.69)
ic.var(x)
ic.var(x,FALSE)
}
\keyword{univar}
