% Arda TURAK 2232791

%% PART A & B
func = @(A_B) sum((((x.^2)./(A_B(1)*x+A_B(2)).^2)-y).^2);    % our summation function with A, B, x, and y
A_B_initial = [0.1,0.1];                                           % Starting point
A_B = fminsearch(func,A_B_initial);                                % using fminsearch function we find A_B

A = A_B(1)                                              % print the value of A
B = A_B(2)                                              % print the value of B

final_value_of_y = (x.^2)./((A*x+B).^2);                % this is our function
plot(x,final_value_of_y,'LineWidth',2)                  % plot our line
legend('calculated values')                             % legend of our plot
hold on
