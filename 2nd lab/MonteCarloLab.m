%Title: To determine the value of Pi using monte carlo method
%Developed by MD
%Date: 07/09/2023

%___Three critical statements____
%______________
close all;
clear variables;

clc;

%_____________
%----user input section -----

%----------

r=input('input the circle radius:');
x=linspace(0,2*r); %where 2r for x and y distance 
y=linspace(0,2*r);

xcircle = r; ycircle = r;
N=40000;
nImages= 0;
fig = figure;
nInside = 0;
theta= 0:pi/50:2*pi;
xunit = r*cos(theta) + r;
yunit = r*sin(theta) + r;
plot(xunit, yunit);

hold on;
for i =1:N

    pnt(i) = point(2*r);
        if((pnt(i).x-r)^2 + (pnt(i).y-r)^2 )< r^2
            nImages = nImages +1;
            % scatter(pnt(i).x, pnt(i).y,5, 'filled', 'MarkedFaceColor','r');
            scatter(pnt(i).x,pnt(i).y,5,'filled','MarkerFaceColor','red');
            nInside = nInside +1;
        else
            nImages = nImages + 1;
            % scatter(pnt(i).x, pnt(i).y,5, 'filled', 'MarkedFaceColor' , 'b');
            scatter(pnt(i).x,pnt(i).y,5,'filled','MarkerFaceColor','black');
        end

        pie = (4*nInside)/i;
        pi_value = strcat('pi=', num2str(pie));
        hold on;
        axis tight;
        title('monte-carlo simulation for value of Pie:');
        axis([0 2*r, 0 2*r]);
        h = text(2*r, 2*r, pi_value);
        drawnow
        frame = getframe(fig);
        im{nImages} = frame2im(frame);
        delete(h);
       
end