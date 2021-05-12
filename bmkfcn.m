function [J, lmt, name] = bmkfcn(index,d)
%Benchmark functions for numerical experiments of optimization.
% inputs:
%   index - integer
%   d - demension of benchmark functions
% outputs:
%   J - function handle, calculating the fitness of x (an d-by-n matrix) 
%   lmt - constraints 
%   name - char, function name
% data: 2021-05-09
% author: elkman, github.com/ElkmanY/
%%
switch index
    case 1
        J = @(x) sum( x.^2 - 10*cos(2*pi*x) + 10 );
        lmt = ones(d,1).*[-5.12,5.12];
        name = 'Rastrigin';
    case 2
        J = @(x) sum(abs(x))+prod(abs(x));
        lmt = ones(d,1)*[-32,32];
        name = 'Schwefel-2.22';
    % case 3
    % under construction...
end
end