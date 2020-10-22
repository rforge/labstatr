\name{test.var}
\alias{test.var}
\title{Calcola intervallo di confidenza per la varianza}
\description{
  Questa funzione effettua il calcolo dell'intervallo di
  confidenza per la varianza di campione gaussiano.
}
\usage{
test.var(x, var0, alternative = "greater", alpha = 0.05)
}
\arguments{
  \item{x}{vettore di dati}
  \item{var0}{valore della varianza sotto l'ipotesi nulla}
  \item{alternative}{direzione del test \code{"greater"} o \code{"less"}. Default = "greater"}
  \item{alpha}{ampiezza del test}
}
\examples{
x <- rnorm(100, sd=5)
var(x)
test.var(x,20)
test.var(x,20,alternative="less")
}
\keyword{univar}
