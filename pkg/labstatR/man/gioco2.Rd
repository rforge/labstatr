\name{gioco2}
\alias{gioco2}
\alias{gioco2a}
\title{Simula la scommessa di De Mere}
\description{
  Questa funzione simula la scommessa di de Mere calcolando
  la probabilita' di fare almeno un doppio 6 in 24 lanci di un dado
  regolare.
}
\usage{
gioco2(prove=10000)
gioco2a(prove=10000)
}
\arguments{
  \item{prove}{numero di prove da utilizzare nella simulazione}
}
\details{
 La versione \code{gioco2} della funzione non e' efficiente in termini di
 velocita' in quanto vengono impiegati cicli \code{for}. Si noti la 
 differenza in termini di velocita' con la version \code{gioco2a}.
}
\seealso{
  \code{\link{gioco1}}.
}
\examples{
ptm <- proc.time()
gioco2a(10000)
proc.time() - ptm
ptm <- proc.time()
gioco2(10000)
proc.time() - ptm
}
\keyword{distribution}
