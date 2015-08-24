\name{Rpa}
\alias{Rpa}
\title{Calcola il rendimento di un portafoglio}
\description{
  Questa funzione permette il calcolo del rendimento atteso di un
  portafoglio di due titoli al variare della quantita' allocata
  nei due titoli.
}
\usage{
Rpa(a,x,y,pxy)
}
\arguments{
  \item{a}{percentuale allocata al primo titolo}
  \item{x}{rendimenti del primo titolo}
  \item{y}{rendimenti del secondo titolo}
  \item{pxy}{distribuzione doppia dei due titoli}
}
\value{
    Una lista contente media e varianza del rendimento del
    portafoglio:
    \item{Rm}{rendimento medio.}
    \item{VR}{varianza del portafolio.}
 }
\details{
  La funzione restituisce rendimento medio e varianza attesa del
  portafoglio.
}
\seealso{
  \code{\link{Rp}}.
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
Rpa(0.1,x,y,pxy)
Rpa(0.5,x,y,pxy)
}
\keyword{distribution}
