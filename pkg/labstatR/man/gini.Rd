\name{gini}
\alias{gini}
\title{Calcola l'indice di concetrazione}
\description{
  Questa funzione permette il calcolo l'indice di concentrazione 
  e il rapporto di concentrazione di Gini. Inoltre disegna la curva
  di Lorenz.
}
\usage{
gini(x, plot=TRUE, add=FALSE, col="black")
}
\arguments{
  \item{x}{vettore di dati}
  \item{plot}{valore logico. Se \code{TRUE} disegna la curva di Lorenz}
  \item{add}{valore logico. Se \code{TRUE} disegna una nuova curva di Lorenz
   sul precedente grafico della curva di concentrazione}
  \item{col}{colore con cui disegnare l'area di concentrazione}  
}
\examples{
x <- c(1,3,4,30,100)
gini(x)
y <- c(10,10,10,10)
gini(y, add=TRUE,col="red")
}
\keyword{univar}
