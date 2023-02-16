clc
clear 
%% Declare the anonymous function
f = @(x) x^2 + 40;

%% Here we declare the amount of geometrical figures we will use
n = 5000;

%% Declare limits
puntmed(f, 5, 10, n);
izq(f, 5, 10, n);
der(f, 5, 10, n);
trap(f, 5, 10, n);

%% Mid point Method
function puntmed(fun, limit1, limit2, recta)
    g = (limit2 - limit1) / recta;
    h = 0;
    for x = limit1 : g : limit2 - g
        h = h + (fun(((2 * x) + g) / 2) * g);
    end
    fprintf("El área por punto medio es: %.5f\n", h)
end

%% Left method
function izq(fun, limit1, limit2, recta)
    g = (limit2 - limit1) / recta;
    h = 0;
    for x = limit1 : g : limit2 - g
        h = h + (fun(x) * g);
    end
    fprintf("El área por izquierda es: %.5f\n", h)
end

%% Right method
function der(fun, limit1, limit2, recta)
    g = (limit2 - limit1) / recta;
    h = 0;
    for x = limit1 + g : g : limit2
        h = h + (fun(x) * g);
    end
    fprintf("El área por derecha es: %.5f\n", h)
end

%% Trapeze method
function trap(fun, limit1, limit2, recta)
    g = (limit2 - limit1) / recta;
    h = 0;
    for x = limit1 : g : limit2 - g
        h = h + (((fun(x) + fun(x + g)) / 2) * g);
    end
    fprintf("El área por trapecio es: %.5f\n", h)
end