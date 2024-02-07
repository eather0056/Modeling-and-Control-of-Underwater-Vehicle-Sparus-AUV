function MbamANT = Antena_added_mass(W, H, T, rho)
    syms x;

    % Integration coefficients
    a11 = 1.7 * pi * rho * (T/2)^2;  % mA = CA*ρ*AR
    a22 = 1.36 * pi * rho * (W/2)^2; % mA = CA*ρ*AR
    a44 = a22;
    a55 = a11;
    a66 = 0.15 * pi * rho * (W/2)^4; % mA = CA*ρ*VR

    % Added mass m11
    q1 = int(x/x, [-H/2 H/2]);
    m11 = a11 * q1;

    % Added mass m22
    m22 = a22 * q1;

    % Added mass m33
    m33 = 0; % No x-dependence

    % Added mass m44
    q2 = int(x^2, [-H/2 H/2]);
    m44 = a44 * q2;

    % Added mass m55
    m55 = a55 * q2;

    % Added mass m66
    m66 = a66 * q1;

    % Added mass matrix
    MbamANT = diag([double(m11), double(m22), m33, double(m44), double(m55), double(m66)]);
end
