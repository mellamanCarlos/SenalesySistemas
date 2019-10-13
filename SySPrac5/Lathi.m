function Lathi
        T_0 = pi; 
        N_0 = 5; 
        T = T_0/N_0; 
        t = (0:T:T*(N_0-1))'; 
        x = exp(-t/2); 
        x(1) = (exp(-pi/2) + 1)/2;
        D_n = fft (x)/N_0;
end