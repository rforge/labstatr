\name{histpf}
\alias{histpf}
\title{Disegna il poligono di frequenza}
\description{
  Questa funzione disegna l'istogramma e vi sovrappone il
  corrispondente poligono di frequenza.
}
\usage{
histpf(x, br, \dots)
}
\arguments{
  \item{x}{vettore di dati}
  \item{br}{numero di intervalli, metodo di scelta degli intervalli o
  vettore di estremi degli intervalli}
  \item{\dots}{argomenti da passare alla funzione \code{hist}}
}
\details{
  Il parametro \code{br} si comporta esattamente come il parametro
  \code{breaks} della funzione \code{hist}.
}
\seealso{
  \code{\link{hist}}.
}
\examples{
x <- rnorm(50)
histpf(x,br=5)
}
\keyword{univar}
