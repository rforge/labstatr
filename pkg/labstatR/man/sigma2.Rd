\name{sigma2}
\alias{sigma2}
\title{Calcola la varianza non corretta}
\description{
  Questa funzione calcola la varianza non corretta.
}
\usage{
sigma2(x)
}
\arguments{
  \item{x}{vettore di dati}
}
\details{
  La funzione \code{var} di \R calcola la varianza campionaria corretta, ovvero
  dividendo la devianza per il numero di elementi del campione meno uno. Questa
  funzione calcola la varianza dividendo la stessa quantita' per il numero
  totale di osservazioni.
}
\examples{
x <- rnorm(10)
var(x)
sigma2(x)
}
\keyword{univar}
