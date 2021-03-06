# Poligono di frequenza sovrapposto
# all'istogramma

histpf <- function(x, br,...){


 if(missing(br))
  ist <- hist(x,...) 
 else
  ist <- hist(x, breaks=br,...)
 
 if(ist$equidist)
  lines( c(min(ist$breaks),ist$mids,max(ist$breaks)), 
   c(0,ist$counts,0))
 else
  lines( c(min(ist$breaks),ist$mids,max(ist$breaks)), 
   c(0,ist$intensities,0))
}

# Calcolo della mediana generalizzato
Me <- function(x){
 if( is.factor(x) ){
  if( !is.ordered(x) ){
   warning("La mediana non si puo' calcolare!!!")
   return(NA)
  }
  me <- median(unclass(x))
  if( me - floor(me) != 0 ){
   warning("Mediana indeterminata")
   return(NA)
  }
  else{
   levels(x)[me]
  }
 }
 else
  median(x)
}

# media armonica
meana <- function(x,...){
 length(x)/sum(1/x)
}


# media geometrica
meang <- function(x,...){
 prod(x)^(1/length(x))
}

# varianza non corretta
sigma2 <- function(x){
 var(x)*(length(x)-1)/length(x)
}

# coefficiente di variazione

cv <- function(x){
 sqrt(sigma2(x))/abs(mean(x))
}


# indice di asimmetria
skew <- function(x){
 n <- length(x)
 s3 <- sqrt(var(x)*(n-1)/n)^3
 mx <- mean(x)
 sk <- sum((x - mx)^3)/s3
 sk/n
}


#indice di curtosi
kurt <- function(x){
 n <- length(x)
 s4 <- sqrt(var(x)*(n-1)/n)^4
 mx <- mean(x)
 kt <- sum((x - mx)^4)/s4
 kt/n
}

# Indice di Gini e curva di Lorenz
gini <- function(x, plot=TRUE, add=FALSE, col="black"){
 n <- length(x)
 x <- sort(x)
 P <-  (0:n)/n
 Q <- c(0,cumsum(x)/sum(x))
 G <- 2*sum(P-Q)/(n-1)
 
 IG <- list(G,(n-1)*G/n,P,Q)
 names(IG) <- c("G","R","P","Q")

 if(plot){
  angle=45
  if(!add){
   plot(P,Q,type="l", axes = FALSE, asp=1,
    main ="curva di Lorenz")
   axis(1);  axis(2);   rect(0,0,1,1)
   lines(c(1,(n-1)/n),c(1,0),lty=2)
   angle=90
  }
  polygon(P,Q, density=10,angle=angle,col=col)
 }

 IG
}


# indice di eterogeneita'
E <- function(x){
 
 f <- table(x)/length(x)
 k <- length(f)

 if(k==1) 
  return(0)

 k*(1-sum(f^2))/(k-1)
}


# Cap 3
# Indice di connessione
chi2 <- function(x,y){
 tab <- table(x,y)
 out <- summary(tab)
 out$statistic / ( out$n.cases * min(dim(tab)-1) ) 
}

# Bubbleplot
bubbleplot <- function(tab, joint = TRUE, magnify=1, 
    filled=TRUE, main="bubble plot"){

  if(! is.table(tab)){
   warning("L'input non e' una tabella")
   return(NULL)
  }
    
  if(joint)
    z <- prop.table(tab)
  else
    z <- prop.table(tab,1)

  h <- dim(z)[[1]]
  k <- dim(z)[[2]]


#  area <- h*k
#  raggio <- pi*magnify*area*sqrt(as.vector(z)/pi)

 raggio <- magnify*sqrt(as.vector(z)/pi)
  raggio[which(raggio==0)] <- NA

  colori <- numeric(h*k)
  if(filled)
   colori <- rep(rainbow(h),k)


  asse.y <- rep(1:h,k)
  asse.x <- numeric(0)
  for(i in 1:k)
   asse.x <- c(asse.x,rep(i,h))

  var <- names(dimnames(z))
 
  plot(0:(k+1),c(0,h+1,rep(0,k)),type="n",
    axes=FALSE,ylab=var[1],xlab=var[2],main=main)
  axis(1,0:(k+1),c("",dimnames(z)[[2]],""))
  axis(2,0:(h+1),c("",dimnames(z)[[1]],""))


#  points(asse.x,asse.y, pch=21, cex = raggio, 
#         bg = colori)

  symbols(asse.x,asse.y,raggio,inches=FALSE, 
          add=TRUE, bg = colori)
}


# Indice eta di dipendenza in media
eta <- function(x,y){

 plot(x,y,axes=FALSE,main="Dipendenza in media")

 dt <- sort(unique(x))
 axis(2)
 axis(1, dt, dt)
 box()
 my <- by(y,x,mean)
 ny <- by(y,x,length)
 points(dt , my, pch=4, cex=3)
 lines(dt, my, pch=4, cex=3)
 abline(h=mean(y),lty=2)
 sm <-sum( (my - mean(y))^2*ny )/length(y)
 sm/mean((y-mean(y))^2)
}
# covarianza non corretta
COV <- function(x,y){ 
  cov(x,y)*(length(x)-1)/length(x)
}

# Cap 4
# Versione con cicli `for'
# Versione con cicli `for'
gioco1 <- function(prove=10000){
 dado <- 1:6
 cnt <- 0
 for(j in 1:prove){
  v <- 0
  for(i in 1:4)
   if( sample(dado,1) == 6 ) v <- v+1
  if(v>0)
   cnt <- cnt + 1
  }
 cnt/prove
}

gioco2 <- function(prove=10000){
 dado <- 1:6
 dadi <- outer(dado,dado)
 cnt <- 0
 for(j in 1:prove){
  v <- 0
  for(i in 1:24)
   if( sample(dadi,1) == 36 ) v <- v+1
  if(v>0)
   cnt <- cnt + 1
  }
 cnt/prove
}

# Versione senza cicli `for'

gioco1a <- function(prove=10000){
 dado <- c(0,0,0,0,0,1)
 somme <- apply(matrix(sample(dado,4*prove,
  replace=TRUE), 4, prove),2,sum)
 (prove-length(which(somme==0)))/prove
}

gioco2a <- function(prove=10000){
 dadi <- rep(0,36); dadi[1] <- 1
 somme <- apply(matrix(sample(dadi,24*prove,
  replace=TRUE), 24, prove),2,sum)
 (prove-sum(somme==0))/prove
}

birthday <- function(n) 
 1-prod((365:(365-n+1))/rep(365,n))



# rendimento del protafoglio
Rpa <- function(a,x,y,pxy){
 px <- rep(0,length(x)) 
 py <- rep(0,length(y))

 for(i in 1:length(x))
  px[i] <- sum(pxy[i,])
 for(j in 1:length(y))
  py[j] <- sum(pxy[,j])

 mx <- sum(x*px)
 my <- sum(y*py)
 vx <- sum( (x-mx)^2*px )
 vy <- sum( (y-my)^2*py )
 cxy <- sum( x*y*pxy ) - mx*my
 mr <- a*mx + (1-a)*my
 vr <- a^2 * vx + (1-a)^2 * vy + 2*a*(1-a) * cxy
 return(list(Rm=mr,VR=vr))
}

# Allocazione ottimale portafoglio
Rp <- function(x,y,pxy){
 px <- rep(0,length(x)) 
 py <- rep(0,length(y))

 for(i in 1:length(x))
  px[i] <- sum(pxy[i,])
 for(j in 1:length(y))
  py[j] <- sum(pxy[,j])

 mx <- sum(x*px)
 my <- sum(y*py)
 vx <- sum( (x-mx)^2*px )
 vy <- sum( (y-my)^2*py )
 cxy <- sum( x*y*pxy ) - mx*my
 ott <- (vy - cxy)/(vx+vy-2*cxy)

 mr <- ott*mx + (1-ott)*my
 vr <- ott^2*vx + (1-ott)^2*vy + 2*ott*(1-ott)*cxy
 return(list(a=ott,Rm=mr,VR=vr))
}

# generatore di variabili casuali
gen.vc <- function(x,p){
 k <- length(p)
 if(length(x) != k){
  warning("\n `x' e `p' non conformi")
  return(NA)
 }

 if( (abs(sum(p)-1)>1e-5) || any(p<0) ){
  warning("\n `p' non e' una distribuzione")
 return(NA)
 }
 if(length(unique(x)) != k){
  warning("\n distribuzione con valori multipli")
 }
 o <- order(x) # estrae l'ordinamento di x
 p <- p[o] # riodina il vettore p
 x <- x[o] # e quindi x
 F <- cumsum(p)  # frequenze cumulate
 u <- runif(1) # genera il numero casuale
 h <- min(which(F>u)) # trova il valore h
 x[h] 
}


# Catene di Markov
Markov <- function(x0, n, x, P){
 mk <- numeric(n+1)
 mk[1] <- x0
 h <- which(x==x0)
 k <- length(x)
 F <- matrix(0,k,k)
 for(i in 1:k)
  F[i,] <- cumsum(P[i,])  # matrice frequenze cumulate
 for(i in 1:n){
  u <- runif(1) # genera il numero casuale
  h <- min(which(F[h,]>u)) # trova il valore h
  mk[i+1] <- x[h] 
 }
 return(list(X=mk,t=0:n))
}

Markov2 <- function(x0, n, x, P){
 mk <- numeric(n+1)
 mk[1] <- x0
 stato <- which(x==x0)
 for(i in 1:n){
  mk[i+1] <- sample(x,1, prob=P[stato,], replace=TRUE)
  stato <- which(x==mk[i+1])
 }
 return(list(X=mk,t=0:n))
}


# traiettoria processo di Poisson non omogeneo
# FIXED in version 10.3. Uso non corretto degli
# argomenti di optim()
lewis <- function(T, lambda, plot.int = TRUE){
	optim(0, lambda, lower=0, upper=T, method="L-BFGS-B", 
		  control=list(fnscale=-1))$value -> lambda.max
	optim(0,lambda, lower=0, upper=T, method="L-BFGS-B")$value -> lambda.min
	lambda.range <- lambda.max - lambda.min
	LAMBDA <- lambda.max + 0.1 * lambda.range
	E <- 0
	t <- 0
	k <- 0
	while(t<T){
		t <- t - 1/LAMBDA * log(runif(1))
		if( runif(1) < lambda(t)/LAMBDA )
			E <- c(E, t) 
	}
		if(plot.int){
			plot(E,0:(length(E)-1),type="s",
				 ylim=c(-1*lambda.range,length(E)))
			g <- function(x) -lambda.range/2+lambda(x)	 
			curve(g,0,T,add=TRUE,
				  lty=2,lwd=2)
		}
		else
			plot(E,0:(length(E)-1),type="s",ylim=c(0,length(E))) 
}  

# traiettoria processo di diffusione
trajectory <- function(x0=1,t0=0,T=1,a,b,n=100){
 if(T<t0){
  warning("T < t0")
  return(NULL)
 }
 n <- as.integer(n)
 dt <- (T-t0)/n

 y <- numeric(n)
 y[1] <- x0
 for(i in 2:n){
  t <- t0+dt*(i-1)
  y[i] <- y[i-1] + a(y[i-1], t) *dt + 
         b(y[i-1], t) * rnorm(1,sd=sqrt(dt))
  }
  return( list(t = seq(t0,T,length=n), y=y) )
}


# Capitolo 5
# intervallo di confidenza per la varianza
ic.var <- 
 function(x,  twosides = TRUE,  conf.level = 0.95) {
  alpha <- 1 - conf.level
  n <- length(x)
  if(twosides){
   l.inf <- (n-1) * var(x)/qchisq(1-alpha/2,df=n-1)
   l.sup <- (n-1) * var(x)/qchisq(alpha/2,df=n-1) 
  }
 else{
  l.inf <- 0
  l.sup <- (n-1) * var(x)/qchisq(alpha,df=n-1) 
  }
  c(l.inf, l.sup)
}

# test sulla varianza 
test.var <- function (x, var0, alternative = 
 "greater", alpha = 0.05){
  if(missing(var0))
   stop("specificare l'ipotesi nulla var0")
  if(missing(x))
   stop("specificare i dati x")
  if(!(alternative %in% c("greater","less")))
   stop("'alternative' deve essere uno tra 'greater' o 'less'")
  n <- length(x)
  stat <- (n-1)*var(x)/var0
  cat("\n Ipotesi nulla => H0 : sigma2 =",var0)
  cat("\n Varianza campionaria:",var(x),",")
  cat(" statistica test:",stat)

  if(alternative == "greater"){
   soglia <- qchisq(1-alpha,df=n-1)
   cat("\n p-value:",1-pchisq(stat,df=n-1),",")    
   cat(" livello del test:",alpha)
   cat("\n Quantile Chi-quadrato:",soglia," con ",
    n-1,"gdl")
   cat("\n Ipotesi alternativa => H1 : sigma2 > ",var0)
   if(stat > soglia)
    cat("\n Decisione: si rifuta H0\n")
   else
    cat("\n Decisione: non si rifuta H0\n")
  } else {
   soglia <- qchisq(alpha,df=n-1)
   cat("\n p-value:",pchisq(stat,df=n-1),",")    
   cat(" livello del test:",alpha)
   cat("\n Quantile Chi-quadrato:",soglia," con ",
    n-1,"gdl")
   cat("\n Ipotesi alternativa => H1 : sigma2 < ",var0)
   if(stat<soglia)
    cat("\n Decisione: si rifuta H0\n")
   else
    cat("\n Decisione: non si rifuta H0\n")
  } 
}





