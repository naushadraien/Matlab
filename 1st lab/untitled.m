%Title: Write a program to add two numbers Developed by: xyz

%Date: 30/8/2023

%-------Three critical statements-----------

close all;

clear variables;

%----user input section---------
x=input ('Enter x:');
y=input('Enter y:');

z=x+y;

%----Output Section------
out=strcat('the sum of two given nummber is=', num2str(z)); %where 2 is for converting the number to string
disp(out);