function bifid
Alphabet = {'A','B','C','D','E';'F','G','H','I','J';'K','L','M','N','O';'P','Q','R','S','T';'U','V','W','X','Y'};
%kamus alfabet yang digunakan
loop = 1;
while loop
str = input ('Masukkan Plaintex Anda :','s'); %inputan user
str2 = str;
a = 1;
b = 2;
%menghitung jumlah inputan dan menetukan string
for k = a:length(str)
    if (str(k)) == 'z'
        [row,col] = find(strcmp('Y',Alphabet));%mencari string yang diinginkan
        fprintf('%d',row); %mencetak baris
        fprintf('%d ',col);%mencetak kolom
        x1 = [row];
        y1 = [col];
        break;
    else
        [row,col] = find(strcmp(upper(str(k)),Alphabet)); %mengubah menjadi kapital
        fprintf('%d',row);%mencetak baris
        fprintf('%d ',col);%mencetak kolom
        x1 = [row];
        y1 = [col];
        break;
    end
end
fprintf('\n');
for k = b:length(str2)% menghitung panjang str2
    if (str2(k)) == 'z'
        [row,col] = find(strcmp('Y',Alphabet)); %mencari string yang diinginkan
        fprintf('%d',row); %mencetak baris
        fprintf('%d ',col); %mencetak kolom
        x = [row];%inialisasi variable x
        y = [col];%Inialisasi variable y
        break;
    else
        [row,col] = find(strcmp(upper(str2(k)),Alphabet)); %mengubah menjadi kapital
        fprintf('%d',row); %mencetak baris
        fprintf('%d ',col); %mencetak kolom
        x = [row];%inialisasi variable x
        y = [col];%inialisasi variable y
        break;
    end
end
%Printah untuk menampilkan variable yg sudah di proses
fprintf('\n');
% fprintf('Penambahan Pada Baris');
as = x1 + x;
fprintf('>');
fprintf('%d', as);
fprintf('\n');
% % fprintf('Penambahan Pada Colom');
ad = y1 + y;
fprintf('>>');
fprintf('%d', ad);
fprintf('\n');
end
end
