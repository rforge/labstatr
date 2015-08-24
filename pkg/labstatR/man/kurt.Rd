\name{kurt}
\alias{kurt}
\title{Calcola l'indice di curtosi}
\description{
  Questa funzione permette il calcolo dell'indice di curtosi.
}
\usage{
kurt(x)
}
\arguments{
  \item{x}{vettore di dati}
}
\seealso{
  \code{\link{skew}}.
}
\examples{
x <- rnorm(50)
kurt(x)
y <- rt(50,df=1)
kurt(y)
}
\keyword{univar}
