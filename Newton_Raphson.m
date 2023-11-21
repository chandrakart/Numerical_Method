% Definisikan fungsi
f = @(x) x^3 + x^2 - 3*x - 3;

% Turunkan fungsi
df = @(x) 3*x^2 + 2*x - 3;

% Inisialisasi titik awal dan toleransi
x0 = 1;
epsilon = 0.0001;

% Inisialisasi iterasi
iter = 0;

% Iterasi Metode Newton-Raphson
while true
    % Hitung nilai fungsi dan turunannya pada titik awal
    fx0 = f(x0);
    dfx0 = df(x0);
    
    % Hitung nilai xi+1
    x1 = x0 - fx0 / dfx0;
    
    % Hitung kesalahan
    error = abs(x1 - x0);
    
    % Tampilkan hasil setiap iterasi
    fprintf('Iterasi %d: x0 = %f, x = %f, f(x) = %f, error = %f\n', iter, x0, x1, fx0, error);
    
    % Periksa konvergensi
    if error < epsilon
        fprintf('Iterasi selesai. Akar yang ditemukan: %f\n', x1);
        break;
    end
    
    % Persiapkan untuk iterasi berikutnya
    x0 = x1;
    iter = iter + 1;
end
