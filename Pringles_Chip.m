% Pringles Chip

[x,y] = meshgrid(-700:700, -700:700); 

a = 16; 
b = 14; 

z = ((x.^2)/(a.^2)) - ((y.^2)/(b.^2)); 

mask = ((x.^2)/(a.^2)) + ((y.^2)/(b.^2)) <=30; 
z(~mask) = NaN; 

% USE 'surf' NOT 'plot'!!!
figure; 
surf(x, y, z, 'EdgeColor','none'); 
axis equal; 
title ('Pringles Chip'); 
xlabel('x'); 
ylabel('y'); 
zlabel('z'); 
grid on; 


