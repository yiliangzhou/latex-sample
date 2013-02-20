function V = vandermat(x)
% given a column vector x of size n+1, return a vandermat.
% ignoring invalid paramter check

n = size(x, 1); % number of elements in vector x.
V = repmat(x, 1, n) .^ (repmat([0:(n-1)], n, 1));
end
