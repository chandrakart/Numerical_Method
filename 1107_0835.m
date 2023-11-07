clear%Berikut ini adalah program untuk menghitung akar dari sebarang bilangan
clc
clear
t=0;
fprintf(' Program ini untuk menghitung AKAR SEBUAH BILANGAN\n')
fprintf(' dibuat oleh : Tuili\n')
fprintf('\n')
a=input(' masukkan nilai bilangan yang akan dicari akarnya:  ');
fprintf('\n')
fprintf(' =======================\n')
fprintf(' iterasi'),fprintf('    nilai akar\n')
fprintf(' =======================\n')
x = a;
i=0;
y(1+i)=(x+a/x)/2;
 while abs(y(1+i)-x)>=0.000001
    x=y(1+i);
    i=i+1;
    y(1+i)=(x+a/x)/2;
    fprintf('  %3g',i),fprintf('      %8.4f\n',y(i))
 end
 fprintf(' =======================\n')
 fprintf(' jadi akar '),fprintf(' %3g',a),fprintf(' adalah : '),fprintf('%8.4f\n',y(i));
 fprintf(' diperoleh pada iterasi :'),fprintf('%3g\n',i);
 fprintf(' =======================\n')
 %sampai disini
 %===========
 %program berikut hanyalah loop untuk mencari nilai akar yang lain
 fprintf('\n')
j = input(' mau menghitung lagi..?  y = [ya] atau t = [tidak] :');
if j==y
    jawab = 1;
elseif j==t
    jawab = 0;
    fprintf('\n')
    fprintf(' terima kasih...!\n')
    fprintf(' ===============\n')
    fprintf('\n')
end
while jawab == 1
clc
a=input(' masukkan nilai bilangan yang akan dicari akarnya:  ');
fprintf('\n')
fprintf(' =======================\n')
fprintf(' iterasi'),fprintf('    nilai akar\n')
fprintf(' =======================\n')
x = a;
i=0;
y(1+i)=(x+a/x)/2;
 while abs(y(1+i)-x)>=0.000001
    x=y(1+i);
    i=i+1;
    y(1+i)=(x+a/x)/2;
    fprintf('  %3g',i),fprintf('      %8.4f\n',y(i))
 end
 fprintf(' =======================\n')
 fprintf(' jadi akar '),fprintf(' %3g',a),fprintf(' adalah : '),fprintf('%8.4f\n',y(i));
 fprintf(' diperoleh pada iterasi :'),fprintf('%3g\n',i);
 fprintf(' =======================\n')
 fprintf('\n')
j = input(' mau menghitung lagi..?  y = [ya] atau t = [tidak] :');
if j==y
    jawab = 1;
elseif j==t
    jawab = 0;
end
if jawab == 0 
fprintf('\n')
fprintf(' terima kasih...!\n')
fprintf(' ===============\n')
fprintf('\n')
end
end