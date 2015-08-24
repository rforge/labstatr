\name{chi2}
\alias{chi2}
\title{Calcola l'indice di connessione}
\description{
  Questa funzione permette il calcolo dell'indice di connessione.
}
\usage{
chi2(x,y)
}
\arguments{
  \item{x}{vettore di dati}
  \item{y}{vettore di dati}
}
\examples{
x <- rbinom(8,5,0.5)
y <- c("A", "A", "B", "A", "B", "B", "C", "B")
chi2(x,y)
}
\keyword{multivariate}
