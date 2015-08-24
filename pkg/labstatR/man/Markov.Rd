\name{Markov}
\alias{Markov}
\alias{Markov2}
\title{Simulatore di catene di Markov}
\description{
  Questa funzione simula una catena di Markov a stati finiti.
}
\usage{
Markov(x0, n, x, P)
}
\arguments{
  \item{x0}{stato iniziale}
  \item{n}{lunghezza della traiettoria}
  \item{x}{insieme degli stati}
  \item{P}{matrice di probabilita' di transizione}  
}
\value{
    Una lista contente la traiettoria della catena di Markov:
    \item{X}{valori assunti dalla catena di Markov}
    \item{t}{tempi}
 }
\details{
  La funzione \code{Markov2} e' basata sulla funzione \code{\link{sample}}.
}
\seealso{
  \code{\link{gen.vc},\link{trajectory},\link{lewis}}.
}
\examples{
x <- c("P","S","N")
P <- matrix(c(0.5,0.5,0.25,0.25,0,0.25,0.25,0.5,0.5),3,3)
Markov("S",15,x,P)  -> traj
traj
plot(traj$t,unclass(factor(traj$X)),type="s",axes=FALSE,
 xlab="t",ylab="Che tempo fa'")
axis(1)
axis(2,c(1,2,3),levels(factor(traj$X)))
box()
}
\keyword{distribution}
