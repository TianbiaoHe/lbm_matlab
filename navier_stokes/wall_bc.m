function f = wall_bc(f, side)
% D2Q9
% Applies a wall BC to the distirbution functions in 2d matrix form.
% Assumes boundary nodes are located on the boundary (as opposed to half-cell away).

if strcmp(side, 'north') % North wall.
    f(end,:,5) = f(end,:,3);
    f(end,:,9) = f(end,:,7);
    f(end,:,8) = f(end,:,6);
end
if strcmp(side, 'south') % South wall.
    f(1,:,3) = f(1,:,5);
    f(1,:,6) = f(1,:,8);
    f(1,:,7) = f(1,:,9);
end


