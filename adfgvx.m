plainText = 'TUGASKRIPTOGRAFI'; % inialisasi variable plaintext
keyword = 'BUNGA'; % Inialisasi variable keyword
arrayOfText = double(plainText); %Inialisasi vaiable arrayOfText
arrayOfKeyword = double(keyword);%Inialisassi variable arrayOfKeyword
indexForArrayOfText = 1; % Inialisasi variable indexForArrayOfText
matrix = ['N' 'A' '1' 'C' '3' 'H'; '8' 'T' 'B' '2' 'O' 'M'; 'E' '5' 'W' 'R' 'P' 'D'; '4' 'F' '6' 'G' '7' 'I'; '9' 'J' '0' 'K' 'L' 'Q'; 'S' 'U' 'V' 'X' 'Y' 'Z']; %Inialisasi variable matrik
matrix = double(matrix);%Inialisasi variable matrik
index = [49 'A'; 50 'D'; 51 'F'; 52 'G'; 53 'V'; 54 'X'];%inialisasi variable index
location = zeros(numel(arrayOfText,2));%mentukan tempat array
location2 = zeros(numel(arrayOfText,2));%menentukan tempat array

for i=1:numel(arrayOfText) %Perulangan digunakan untuk mencari lokasi
    [location(i,1), location(i,2)] = find(matrix == arrayOfText(i));
end
%Deklarasi perulangan menggunakan for mencari lokasi array
for i=1:6 
    for j=1:numel(arrayOfText)
        for k=1:2
            if location(j,k) == (index(i,1) - 48)
                location2(j,k) = index(i,2);
            end
        end
    end
end

location2 = char(location2);%Proses inialisasi variable location2

location3 = '';

for i=1:numel(arrayOfText)%Penentuan lokasi Array
    for j=1:2
        location3 = [location3, location2(i,j)];
    end
end
%inialisasi variable matrix2
matrix2 = zeros(ceil(numel(location3)/numel(arrayOfKeyword)),numel(arrayOfKeyword));

[rowOfMatrix2,columnOfMatrix2] = size(matrix2);
cipherText = '';
%Proses perulangan menggunakana for untuk transpose
for i=1:rowOfMatrix2
    for j=1:columnOfMatrix2
        matrix2(i,j) = location3(indexForArrayOfText);
        indexForArrayOfText = indexForArrayOfText + 1;
        if indexForArrayOfText > numel(location3)
            break;
        end
    end
    if indexForArrayOfText > numel(location3)
        break;
    end
end
%Inialisasai variable matrix2
matrix2 = transp(sortrows(transp(vertcat(arrayOfKeyword, matrix2))));
matrix2(1,:) = [];
%Perulangan menvcari colom dan baris
for i=1:columnOfMatrix2
    for j=1:rowOfMatrix2
        cipherText = [cipherText,matrix2(j,i)];
    end
end

input = ['Plain Text = ', plainText];%Proses inialisasai 
output = ['Cipher Text = ', cipherText];%Proses inialisasi 
disp(input);%Perintah untuk menampilkan
disp(output);%Perintah untuk menampilkan
