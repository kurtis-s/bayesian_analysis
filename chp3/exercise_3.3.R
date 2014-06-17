#Make a graph of the density function
xlow = 0 #x axis min val
xhigh = 1 #x axis max val
dx = 0.02

x = seq( from=xlow, to=xhigh, by=dx )
y = 6*x*(1-x)

plot( x, y, type="h" )

#Approximate the integral
area = sum( dx*y )
print(area)
