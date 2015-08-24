\name{Rp}
\alias{Rp}
\title{Calcola l'allocazione ottimale di un portafoglio}
\description{
  Questa funzione permette il calcolo dell'allocazione ottimale
  di due titoli di un portafoglio.
}
\usage{
Rp(x,y,pxy)
}
\arguments{
  \item{x}{rendimenti del primo titolo}
  \item{y}{rendimenti del secondo titolo}
  \item{pxy}{distribuzione doppia dei due titoli}
}
\value{
    Una lista contente media e varianza del rendimento del
    portafoglio:
    \item{a}{quota ottimale da allocare nel primo titolo}
    \item{Rm}{rendimento medio.}
    \item{VR}{varianza del portafolio.}
 }
\details{
  La funzione restituisce rendimento medio e varianza attesa del
  portafoglio allocato in modo ottimo. Restituisce inoltre il 
  valore ottimo di capitale da allocare nel primo titolo.
}
\seealso{
  \code{\link{Rpa}}.
}
\examples{
x <- c(11,9,25,7,-2)/100
y <- c(-3,15,2,20,6)/100
pxy <- matrix(rep(0,25),5,5)
pxy[1,1] <- 0.2
pxy[2,2] <- 0.2
pxy[3,3] <- 0.2
pxy[4,4] <- 0.2
pxy[5,5] <- 0.2
Rp(x,y,pxy)
}
\keyword{distribution}
