\name{bubbleplot}
\alias{bubbleplot}
\title{Disegna un grafico a bolle}
\description{
  Questa funzione disegna un grafico a bolle (bubbleplot) a partire
  da una tabella a doppia entrata.
}
\usage{
bubbleplot(tab, joint = TRUE, magnify = 1, 
           filled = TRUE, main = "bubble plot")
}
\arguments{
  \item{tab}{tabella di contingenza a due vie}
  \item{joint}{valore logico. Se \code{TRUE} disegna la distribuzione di
   frequenza congiunta altrimenti le distribuzione condizionata per riga}  
  \item{magnify}{parametro per il controllo dell'ampiezza delle bolle}
  \item{filled}{valore logico. Se \code{TRUE} riempie di colore le bolle}
  \item{main}{titolo del grafico}     
}
\examples{
x <- c("O","O","S","B","S","O","B","B","S",
   "B","O","B","B","O","S")
y <- c("O","B","B","B","S","S","O","O","B",
   "B","O","S","B","S","B")
x <- ordered(x, levels=c("S","B","O")) 
y <- ordered(y, levels=c("S","B","O")) 
table(x,y)
bubbleplot(table(x,y),main="Musica versus Pittura")
}
\keyword{multivariate}
