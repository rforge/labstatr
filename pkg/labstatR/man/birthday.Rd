\name{birthday}
\alias{birthday}
\title{Calcola la probabilita' di compleanni coincidenti}
\description{
  Questa funzione risolve il problema del calcolo della probabilita'
  di trovare due persone in un gruppo di \code{n} nate lo stesso
  giorno.
}
\usage{
birthday(n)
}
\arguments{
  \item{n}{numero di persone nel gruppo}
}
\seealso{
  \code{\link{pbirthday}}.
}
\examples{
n <- c(5,10,15,20,21,22,23,24,25,30,50,60,
       70,80,90,100,200,300,365)
for(i in n)
 cat("\n n=",i,"P(A)=",birthday(i))
}
\keyword{distribution}
