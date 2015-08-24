\name{Me}
\alias{Me}
\title{Calcola la mediana anche per fenomeni qualitativi}
\description{
  Questa funzione permette il calcolo della mediana anche
  nel caso di fenomeni qualitativi ordinabili.
}
\usage{
Me(x)
}
\arguments{
  \item{x}{vettore di dati}
}
\details{
  La funzione \code{median} di \R contenuta nel pacchetto \code{base}
  funziona solo per dati quantitativi. La funzione \code{Me}
   restituisce un messaggio d'errore se la mediana risulta indeterminata.
}
\seealso{
  \code{\link{median}}.
}
\examples{
x <- factor(c("A", "B", "A", "C", "A"))
Me(x)
}
\keyword{univar}
