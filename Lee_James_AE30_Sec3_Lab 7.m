%% AE30 Programming for AE
% Name: James Lee
% Date: 03/10/2016

clear all, close all, clc
%% Problem 1 
P = input ('Please input borrowed amount:\n');
i = input ('Please input annual interest rate:\n');
n = input ('Please input number of years:\n');
while P < 0 ||  i < 0 || n < 0
    P = input ('Please reinput non-negative borrowed amount:\n');
    i = input ('Please reinput non-negative annual interest rate:\n');
    n = input ('Please reinput non-negative number of years:\n');

end
total_lump_sum = lumpsum(P,i,n);
fprintf ('The lump sum is %.5f.\n',total_lump_sum)

clf;
x=1:n;
y= lumpsum(P,i,x);
plot (x,y,'b*')
xlabel('Number of years');
ylabel('Amount of money');
title('Amount of S as it increases through the years');

%% Problem 2
sumprint;

%% Problem 3
projectile_inputs;
projectile_motion;
