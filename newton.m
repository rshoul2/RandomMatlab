function newt = newton(x)

func = (x*x*x) - (x*x) - x + 1;
funcderiv = 3*(x*x) - 2*(x) - 1;

newt = x - func/funcderiv;

end
