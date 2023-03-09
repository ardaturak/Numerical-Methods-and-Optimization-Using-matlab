% Arda TURAK 2232791

f = @(x,y) x^2 + 5*y^2 + 3*x*y - 4*x - 5*y;     % Define the objective function
g = @(x,y) -6.8*y - 2.4*x + 8.96;               % Define the inequality constraint


P1 = @(x) f(x(1),x(2)) + g(x(1),x(2))^2;        % Define the penalty function for r = 1
P10 = @(x) f(x(1),x(2)) + 10*g(x(1),x(2))^2;    % Define the penalty function for r = 10
P100 = @(x) f(x(1),x(2)) + 100*g(x(1),x(2))^2;  % Define the penalty function for r = 100

options = optimset('Display','iter');           % Set options for fminsearch

x1 = fminsearch(P1,[0.5,0.5],options);          % Minimize the penalty function for r = 1
x10 = fminsearch(P10,[0.5,0.5],options);        % Minimize the penalty function for r = 10
x100 = fminsearch(P100,[0.5,0.5],options);      % Minimize the penalty function for r = 100

% Print the solution
fprintf('r = 1: x = %f, y = %f\n', x1(1), x1(2));               % for x1
fprintf('r = 10: x = %f, y = %f\n', x10(1), x10(2));            % for x10
fprintf('r = 100: x = %f, y = %f\n', x100(1), x100(2));         % for x100