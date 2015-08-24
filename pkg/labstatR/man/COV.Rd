\name{COV}
\alias{COV}
\title{Calcola la covarianza non corretta}
\description{
  Questa funzione permette il calcolo della covarianza non corretta.
}
\usage{
COV(x,y)
}
\arguments{
  \item{x}{vettore di dati}
  \item{y}{vettore di dati}
}
\details{
 La funzione \code{cov} di \R effettua il calcolo della varianza campionaria, 
 ovvero divide la codevianza per il numero di dati meno uno. Questa funzione
 invece divide la codevianza per ll numero di dati a disposizione.
}
\seealso{
  \code{\link{cov}}.
}
\examples{
x <- c(1,3,2,4,6,7)
y <- c(7,3,2,1,-1,-3)
cov(x,y)
COV(x,y)
}
\keyword{multivariate}
