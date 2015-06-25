function [rank,iterations,stochastic] = PageRank_Shoultz(A,tol)
%
n = size(A,1);
rank = transpose(rand(n,1));
error = inf;
former_rank = transpose(ones(n,1));
stochastic = A;
i = 1;
iterations = 0;
%

while (i <= n)
    stochastic(i,1:n) = A(i,1:n) ./ sum(A(i,1:n));
    i = i + 1;
end

while (error > tol)
    former_rank = rank;
    rank = rank*stochastic;
    error = abs(rank - former_rank);
    iterations = iterations + 1;
end
end