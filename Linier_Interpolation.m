clc;
clear all;

% Data yang diberikan
x = [2, 4, 6, 8, 10];
y = [9.68, 10.96, 12.32, 13.76, 15.28];

% Nilai yang ingin diinterpolasi
x_interpolasi = 2.4;

% Melakukan interpolasi linier
y_interpolasi = interp1(x, y, x_interpolasi, 'linear');

% Menampilkan hasil interpolasi
fprintf('Nilai y untuk x = %.2f adalah %.2f\n', x_interpolasi, y_interpolasi);
