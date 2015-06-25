function e = relBackwardError(A)
b = randi([0,100],10,1);
x = A\b;
e = max(sum(abs(b - A*x)))/max(sum(abs(b)));
end