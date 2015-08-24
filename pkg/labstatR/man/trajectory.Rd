\name{trajectory}
\alias{trajectory}
\title{Simulatore di processi di diffusione}
\description{
  Questa funzione simula un processo di diffusione.
}
\usage{
trajectory(x0=1,t0=0,T=1,a,b,n=100)
}
\arguments{
  \item{x0}{stato iniziale}
  \item{t0}{istante iniziale}
  \item{T}{istante finale}
  \item{a}{coefficiente di deriva}
  \item{b}{coefficiente di diffusione}
  \item{n}{numero di valori in cui suddividere l'intervallo (\code{t0},\code{T})}    
}
\value{
    Una lista contente la traiettoria del processo di diffusione:
    \item{t}{vettore dei tempi}
    \item{y}{valori assunti dall traiettoria}
 }
\details{
  I due coefficienti di deriva e diffusione devono essere funzioni di due 
  variabili \code{x} e \code{t}. La funzione utilizza lo schema di Eulero
  quindi il processo da simulare deve rispettare le opportune ipotesi sui
  coefficienti dell'equazione differenziale stocastica.
}
\seealso{
  \code{\link{gen.vc},\link{Markov},\link{lewis}}.
}
\examples{
n <- 100
T <- 1
x0 <- 1
mu <- function(x,t) {-x*t}
sigma <- function(x,t) {x*t}
diff <- trajectory(1,0,1,mu,sigma,100)
plot(diff$t,diff$y,type="l")
acf(diff$y, main="Processo di diffusione")
}
\keyword{distribution}
