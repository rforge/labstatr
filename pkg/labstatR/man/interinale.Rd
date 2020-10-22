\name{interinale}
\title{Dati sul lavoro interinale}
\usage{data(interinale)}
\alias{interinale}
\format{
  Dataset tratti dall'archivio di una societa' interinale
  italiana.
}
\source{Iacus, S.M., Porro, G. (2001)}
\description{
  Si tratta di un campione di dati relativi agli iscritti ed
  avviati alle missioni di una societa' di fornitura di lavoro 
  interinale.
}
\references{
  Iacus, S.M., Porro, G. (2001)  Occupazione interinale e terzo 
  settore. Analisi dei microdati di una societa' ``no profit''  
  di fornitura di lavoro interinale, IRES Quaderno n.2,  
  \emph{IRES-Lombardia}.
}
\examples{
data(interinale)
glm(avviato~., binomial, data=interinale) -> model
model
pr <- predict(model, type="response")
plot(density(pr),xlim=c(0,0.2),main="")
}
\keyword{datasets}
