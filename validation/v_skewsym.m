a = rand(3,1);
b = rand(3,1);

S = skewsym(a);

cross1 = cross(a,b);
cross2 = S*b;

disp('cross(a,b) = ')
disp(cross1)

disp('S*b = ')
disp(cross2)

disp('Error = ')
disp(norm(cross1-cross2))