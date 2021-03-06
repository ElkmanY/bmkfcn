function [J, lmt, name] = bmkfcn(index,d)
%Benchmark functions for numerical experiments of optimization.
% inputs:
%   index - integer or char, function index or name
%   d - demension of benchmark functions
% outputs:
%   J - function handle, calculating the fitness of x (an d-by-n matrix) 
%   lmt - constraints 
%   name - char, function name
% data: 2021-05-09
% author: elkman, github.com/ElkmanY/
%%
switch index
    case {1,'Rastrigin'}
        J = @(x) sum( x.^2 - 10*cos(2*pi*x) + 10,1);
        lmt = ones(d,1).*[-5.12,5.12];
        name = 'Rastrigin';
    case {2,'Schwefel-2.22'}
        J = @(x) sum(abs(x),1)+prod(abs(x),1);
        lmt = ones(d,1)*[-32,32];
        name = 'Schwefel-2.22';
    case {3,'Rosenbrock'}
        if d<2
            error('Demension d of the Rosenbrock function is no less than 2.');
        end
        a = 1; b =100;
        J = @(x) sum((b*(x(2:end,:)-x(1:end-1,:).^2).^2 + (a - x(1:end-1,:)).^2),1);
        lmt = ones(d,1)*[-5,10];
        name = 'Rosenbrock';
    % case 4
    % under construction...
end
end