x = seq( from=-3, to=3, by=0.1 )
y = x^3
#Plot x cubed
plot( x, y, type="l")
dev.copy2eps( file="SimpleGraphXCubed.eps")
