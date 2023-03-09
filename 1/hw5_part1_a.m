% Arda TURAK 2232791

x = load('x.txt');                          % Load x from text files
y = load('y.txt');                          % Load y from text files

x_linearized = 1./x;                               % Linearize the relation for x
y_linearized = sqrt(1./y);                         % Linearize the relation for y

% with using Linear least squares algorithm we have
A_matrix = [ones(size(x_linearized)),x_linearized];     % calculate A_matrix
A_B = pinv(A_matrix) * y_linearized;                    % using pinv(A) function in MATLAB

%% PART A
A = A_B(1)                                              % print the value of A
B = A_B(2)                                              % print the value of B

%% PART B
scatter(x,y)                                        % with using scatter plot
hold on

%% PART C
final_value_of_y = (x.^2)./((A*x+B).^2);        % this is our function
plot(x,final_value_of_y,'LineWidth',2)          % plot our line
xlabel('x');                                    % xlable is x
ylabel('y');                                    % ylable is y
title('y vs x plot');                           % title of the plot
hold on