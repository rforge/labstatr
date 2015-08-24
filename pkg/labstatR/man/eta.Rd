\name{eta}
\alias{eta}
\title{Calcola l'indice di dipendenza in media}
\description{
  Questa funzione permette il calcolo dell'indice di dipendenza in media e
  traccia il grafico della funzione di regressione.
}
\usage{
eta(x,y)
}
\arguments{
  \item{x}{vettore di dati eventualmente qualitativo}
  \item{y}{vettore di dati numerico}  
}
\details{
  Questa funzione considera la dipendenza in media di \code{y} da \code{x}.
}
\examples{
x <- c(rep(1,10),rep(0,23), rep(2,15))
y <- c(rnorm(10,mean=7),rnorm(23,mean=19),rnorm(15,mean=17))
eta(x,y)
y <- c(rnorm(10,mean=8),rnorm(23,mean=7),rnorm(15,mean=6.5))
eta(x,y)
}
\keyword{multivariate}
