function MbamCY = Vertical_cylinders_added_mass(H, R, rho)
    syms x;

    % Integration coefficients
    a11 = rho * pi * R^2; % mA = ρ*CA*AR
    a22 = a11;
    a33 = 0;
    a44 = a22;
    a55 = a11;
    a66 = 0;

    % Added mass m11
    q1 = int(x/x, [-H/2, H/2]);
    m11 = a11 * q1;

    % Added mass m22
    m22 = a22 * q1;

    % Added mass m33
    m33 = a33; 

    % Added mass m44
    q2 = int(x^2, [-H/2, H/2]);
    m44 = a44 * q2;

    % Added mass m55
    m55 = a55 * q2;

    % Added mass m66
    m66 = a66 * q1;

    % Added mass matrix
    MbamCY = diag([double(m11), double(m22), m33, double(m44), double(m55), double(m66)]);
end
