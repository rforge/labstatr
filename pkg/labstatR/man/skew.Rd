\name{skew}
\alias{skew}
\title{Calcola l'indice di asimmetria}
\description{
  Questa funzione permette il calcolo dell'indice di asimmetria.
}
\usage{
skew(x)
}
\arguments{
  \item{x}{vettore di dati}
}
\seealso{
  \code{\link{kurt}}.
}
\examples{
x <- rnorm(50)
skew(x)
y <- rchisq(50,df=1)
skew(y)
}
\keyword{univar}
