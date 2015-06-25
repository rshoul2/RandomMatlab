function g = Gdecomp(Alu,b)

n = length(b);
g = zeros(n,1);

%forward sub
g(1) = b(1);
for i=2:n
    g(i)=b(i)-Alu(i,i-1:-1:1)*g(i-1:-1:1);
end
end