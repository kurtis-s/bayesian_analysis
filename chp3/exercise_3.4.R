#Approximate the area between mu-sigma and mu+sigma
mu = 0
sigma = 1
xlow = mu - sigma
xhigh = mu + sigma
dx = 0.01

x = seq( from=xlow, to=xhigh, by=dx )
y = 1/(sigma*sqrt(2*pi))*exp(-(x-mu)^2/(2*sigma^2))
area = sum( dx*y )

print(area)
