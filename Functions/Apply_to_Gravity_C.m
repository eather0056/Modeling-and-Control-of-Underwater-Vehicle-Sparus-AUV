function [Mg] = Apply_to_Gravity_C(r, M)
    % Mg is the mass matrix expressed in the gravity center,
    % r is the vector of coordinates of the point in the body frame,
    % and M is the matrix in the center of the part.
    % Careful, this is only working with r with 3 dimensions.

    Od = zeros(3, 3);
    Id = eye(3);

    %skew matrix 
    %Skew = @(v) [0 -v(3) v(2); v(3) 0 -v(1); -v(2) v(1) 0];

    %H = [Id, Skew(r)'; Od, Id];
    H=[Id (S_(r))'; Od Id];
    HT = H';

    Mg = HT * M * H;
end
