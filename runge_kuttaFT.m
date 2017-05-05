function g = runge_kuttaFT(g1, i)
    global dt
    k1 = dt * funcFT(i);
    k2 = dt * funcFT(i+1/2);
    k3 = dt * funcFT(i+1/2);
    k4 = dt * funcFT(i+1);
    g = g1 + k1/6 +k2/3 + k3/3 + k4/6;
end

function output = funcFT(j)
    global dt t omega
    Et = exp(-((t(1)+dt*j)/(10e-15)).^2).*cos(2*pi*0.2413e15*(t(1)+dt*j));
    output = Et.*exp(1i*omega*(t(1)+dt*j));
end
