\name{lewis}
\alias{lewis}
\title{Simulatore di processi di Poisson}
\description{
  Questa funzione simula un processo di Poisson non omogeneo.
}
\usage{
lewis(T, lambda, plot.int = TRUE)
}
\arguments{
  \item{T}{orizzonte temporale}
  \item{lambda}{funzione di intensita'}
  \item{plot.int}{se \code{TRUE} traccia il grafico della funzione di
   intensita' oltre alla traiettoria del processo}
}
\details{
  Disegna una traiettoria di un processo di Poisson non omogeneo
  con funzione di intensita' \code{lambda} (che deve essere una
  funzione di una variabile) nell'intervallo (0,\code{T}).
}
\seealso{
  \code{\link{gen.vc},\link{Markov},\link{trajectory}}.
}
\examples{
lewis(20,sin)
}
\keyword{distribution}
