#Goal: Toss a biased coin N times and compute the running proportion of heads
N = 500
headprop = .8
#Heads=1, Tails=0
flipsequence = sample( x=c(0,1), prob=c(1-headprop, headprop), size=N, replace=TRUE )
r = cumsum( flipsequence )
n = 1:N
runprop = r / n
plot( n, runprop, type="o", log="x", xlim=c(1,N), ylim=c(0.0,1.0), cex.axis=1.5, xlab="Flip Number", ylab="Proportion Heads", cex.lab=1.5, main="Running Proportion of Heads", cex.main=1.5 )
lines( c(1,N), c(headprop, headprop), lty=3 )
