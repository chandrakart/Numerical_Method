% Matriks koefisien
A = [2, 0, -1; 6, 5, 3; 2, -1, 0];

% Matriks augmented
B = [2; 7; 4];

% Matriks augmented gabungan
AB = [A, B];

% Eliminasi Gauss-Jordan
[m, n] = size(AB);

for k = 1:min(m, n - 1)
    % Pivoting
    [~, pivot_row] = max(abs(AB(k:m, k)));
    pivot_row = pivot_row + k - 1;
    AB([k, pivot_row], :) = AB([pivot_row, k], :);

    % Normalisasi
    pivot = AB(k, k);
    AB(k, :) = AB(k, :) / pivot;

    % Eliminasi
    for i = [1:k-1, k+1:m]
        factor = AB(i, k) / AB(k, k);
        AB(i, :) = AB(i, :) - factor * AB(k, :);
    end
end

% Back Substitution
x = zeros(n - 1, 1);

for i = m:-1:1
    x(i) = AB(i, end) - AB(i, i+1:n-1) * x(i+1:n-1);
end

disp('Akar dari sistem persamaan linear:');
disp(x);
