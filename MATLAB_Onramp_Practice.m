%MATLAB Onramp Practice

x = [1 2 3]; % Enter x = x' to transpose it into column vector

t = [3 2 1]; 

s = [0.756 0.484 0.154]; % Define a vector with decimal portions

rs = round(s); % round the values of s to an integer and store them in rs

y = [4; 5; 6]; % Row vector. You can change the third element of y from 6 to 8 by y(3) = 8

a = [1 3 5; 2 4 6]; 

b = [1 2 3; 4 5 6; 7 8 9]; % 3x3 Matrix

c = 1:10; % Vector with 1 spacing in between (by default)

z = 1:0.5:5; % Vector with 0.5 spacing in between


g = 9.81; 
h = sin(g); % Store the sin of g in a variable named h

% Use 'linspace' command if you want even distribution in a vector
% Command goes 'linspace(first, last, number of elements)

j = linspace(1,10,5); 

n = linspace(1,2*pi,100); 
% Created a vector beginning with 1 and ending at 2pi with 100 elements

% Create a 3x2 matrix with random values

q = rand(3,2); 

% extract number from matrix b. Let p be the 3rd row, 2nd column of matrix b

p = b(3,2); 

i = x + t; % Define vector i as a product of vectors x and t

flight_path = x .* t; 
dimension = size(b); % Get the size of marix b ([3,3] for 3x3) with the 'size()' function

% Create a matrix which values ranges from 1 to 20, has 5 rows and 7 columns

heat_transfer = randi(20,5,7);

% Plot a function with vector x on x-Axis and y on y-Axis

plot(x,y); 

l = pi > 3; % Test if pi is larger than 3 (Output will be '1' for true)




