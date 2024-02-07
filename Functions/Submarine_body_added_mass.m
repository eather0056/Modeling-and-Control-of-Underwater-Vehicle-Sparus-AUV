function MbamSB = Submarine_body_added_mass(R, L, rho)
    syms x;

    % Surge direction added mass - m11 (using Prolate spheroid theory)
    L1 = L - 2 * R;                  % length of a cylinder
    V = pi * R^2 * (L1 + (4/3) * R); % Volume of the entire submarine body

    % Prolate spheroid parameters
    b = R;                            % Smaller axis length
    a = (3 * V) / (4 * pi * b^2);     % Longer axis length
    mdf = (4/3) * rho * pi * a * b^2; % Mass of displaced fluid
    e = sqrt(1 - (b^2 / a^2));        % Eccentricity
    a0 = 2 * ((1 - e^2) / e^3) * ((0.5 * log((1 + e) / (1 - e))) - e); % alpha0 coefficient
    k1 = a0 / (2 - a0);               % K-coefficient

    % Added mass m11
    m11 = k1 * mdf;

    % Other added masses (using Slender Body theory)
    a22 = rho * pi * R^2;
    a33 = a22;
    a44 = 0;
    a55 = a33;
    a66 = a22;

    % Integration intervals
    interval1 = [((-L1/2) - R), -L1/2];
    interval2 = [-L1/2, L1/2];
    interval3 = [L1/2, (L1/2) + R];

    % Added masses m22, m33, m44, m55, m66
    q1 = int(1 - (((x + L1/2)^2) / R^2), interval1);
    q2 = int(x / x, interval2);
    q3 = int(1 - (((x - L1/2)^2) / R^2), interval3);

    m22 = a22 * (q1 + q2 + q3);
    m33 = a33 * (q1 + q2 + q3);
    m44 = a44 * (q1 + q2 + q3);

    expr4 = x^2 * (1 - (((x + L1/2)^2) / R^2));
    expr5 = x^2;
    expr6 = x^2 * (1 - (((x - L1/2)^2) / R^2));

    q4 = int(expr4, interval1);
    q5 = int(expr5, interval2);
    q6 = int(expr6, interval3);

    m55 = a55 * (q4 + q5 + q6);
    m66 = a66 * (q4 + q5 + q6);

    % Added mass matrix
    MbamSB = diag([double(m11), double(m22), double(m33), double(m44), double(m55), double(m66)]);
end
