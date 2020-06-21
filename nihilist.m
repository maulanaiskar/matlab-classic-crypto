%membuat fungsi nihilist
function nihilist
%kunci matrik = 'BUNGA';
%inisialisasi var alphabet
Alphabet = {'E','T','I','K','A';'B','C','D','F','G';'H','L','M','N','O';'P','Q','R','S','U';'V','W','X','Y','Z'};
%inisialisasi var loop bernilai 1
loop = 1;
%perulangan loop
while loop
%inisialisasi var a bernilai 1
a = 1;
%printf('%d',a);
%printf('\n');
%inputan user yang disimpan dalam var str
str = input ('Masukkan Plaintex Anda :','s');
%inputan user yang disimpan dalam var str2
str2 = input ('Masukkan Kunci Anda :','s');
%perulangan for saat k = 1 hingga panjang dari str
for k = 1:length(str)
    %syarat jika nilai str k bernilai j
    if (str(k)) == 'j'
        %maka masukkan array row col dan temukan I dalam alphabet
        [row,col] = find(strcmp('I',Alphabet));
        %cetak nilai baris
        fprintf('%d',row);
        %cetak nilai kolom
        fprintf('%d ',col);
        %array baris kolom disimpan dalam var x
        x = [row,col];
        %jika syarat tidak terpenuhi
    else
        %langsung temukan karakter yang terdapat pada Alphabet
        [row,col] = find(strcmp(upper(str(k)),Alphabet));
        %cetak nilai baris
        fprintf('%d',row);
        %cetak nilai kolom
        fprintf('%d ',col);
        %array baris kolom disimpan dalam var x
        x = [row,col];
    %end if
    end
    %end for
end
    %cetak baris selanjutnya
fprintf('\n');
%perulangan untuk k = 2 hingga panjang dari str2
for k = a:length(str2)
    %jika str2 == j
    if (str2(k)) == 'j'
        %samakan dengan I dalam alphabet
        [row,col] = find(strcmp('I',Alphabet));
        %cetak baris dan kolom
        fprintf('%d',row);
        fprintf('%d ',col);
        y = [row,col];
        break;
        %jika tidak terpenuhi
    else
        %langsung temukan tiap karakter yang telah di uppercase
        [row,col] = find(strcmp(upper(str2(k)),Alphabet));
        %cetak baris dan kolom
        fprintf('%d',row);
        fprintf('%d ',col);
        y = [row,col];
        break;
    end
end
fprintf('\n');
%inisialisasi var as
as = x + y;
%cetak lebih dari as dan nilai as
fprintf('>');
fprintf('%d', as);
fprintf('\n');
a = a+1;
end
end
end

%fungsi decrypt
function decrypt = buka(sandi,kunci)
%inisialisasi array sandi dan kunci
sandi=[56 44 55 46 44 55 66 22];
kunci=[11 12 13 14];
%inisialisasi x dan y yang merupakan panjang dari sandi dan kunci
x=length(sandi);
k=length(kunci);
%inisialisasi j = 1
j=1;
%perulangan i = 1 hingga x
for i=1:x
    %syarat j == k_1
  if(j==k+1)
      %j = 1
  j=1;
  end
  sx(i)=sandi(i)-kunci(j);
  j=j+1;
end
%cetak sx
fprintf('%i',sx);
fprintf('\n');
%inisialisasi var cipher
cipher=(sx);
%inisialisasi c = panjang cipher
c=length(cipher);
%membuat matrik 5*5
matrix=['ABCDE';'FGHIK';'LMNOP';'QRSTU';'VWXYZ'];
%nilai tiap baris * kolom
matriks=[11 12 13 14 15;21 22 23 24 25;31 32 33 34 35;41 42 43 44 45;51 52 53 54 55];
%perulangan untuk l = 1 hingga panjang c
for l=1:c
    %perulangan untuk i = 5 hingga 5
  for i=1:5
      %perulangan unutk j = 1 hinnga 5
   for j=1:5
       %sayart jika cipher = matriks i,j
 if cipher(l) == matriks(i,j)
     %buka matrik ij
    buka(l) = matrix(i,j);
 end
     end
  end
end
%cetak teks
fprintf('teks = ');
%cetak nilai var buka
fprintf('%c ',buka );
fprintf('\n');
return
end
