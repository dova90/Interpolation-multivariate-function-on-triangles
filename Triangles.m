function [cords,p0,p1,p2,p4] = Triangles(pionG,pionD,pozL,pozP, t)
% komentarze
n = t+1;
x = linspace(pozL,pozP, n);
y = linspace(pionG,pionD, n);

[X,Y] = meshgrid(x,y);
cords = complex(X,Y);
p0 = cords(2:n, 1:(n-1));
p1 = cords(1:(n-1), 1:(n-1));
p2 = cords(2:n, 2:n);
p4 = cords(1:(n-1), 2:n);

p01 = (p0+p1)./2;
p02 = (p0+p2)./2;
p12 = (p1+p2)./2;
p14 = (p1+p4)./2;
p24 = (p2+p4)./2;

p0 = reshape(p0,[],1); p0 = [real(p0), imag(p0)];
p1 = reshape(p1,[],1); p1 = [real(p1), imag(p1)];
p2 = reshape(p2,[],1); p2 = [real(p2), imag(p2)];
p4 = reshape(p4,[],1); p4 = [real(p4), imag(p4)];
p01 = reshape(p01,[],1); 
p02 = reshape(p02,[],1);
p12 = reshape(p12,[],1);
p14 = reshape(p14,[],1);
p24 = reshape(p24,[],1);

end

