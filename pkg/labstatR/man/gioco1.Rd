\name{gioco1}
\alias{gioco1}
\alias{gioco1a}
\title{Simula la scommessa di De Mere}
\description{
  Questa funzione simula la scommessa di de Mere calcolando
  la probabilita' di fare almeno un 6 in 4 lanci di un dado
  regolare.
}
\usage{
gioco1(prove=10000)
gioco1a(prove=10000)
}
\arguments{
  \item{prove}{numero di prove da utilizzare nella simulazione}
}
\details{
 La versione \code{gioco1} della funzione non e' efficiente in termini di
 velocita' in quanto vengono impiegati cicli \code{for}. Si noti la 
 differenza in termini di velocita' con la version \code{gioco1a}.
}
\seealso{
  \code{\link{gioco2}}.
}
\examples{
ptm <- proc.time()
gioco1a(10000)
proc.time() - ptm
ptm <- proc.time()
gioco1(10000)
proc.time() - ptm
}
\keyword{distribution}
