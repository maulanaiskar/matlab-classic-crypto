%Mendefinisikan Key dan Plain Text
loop = 1;%Perulangan menggunakan loop
flag = 0;%inilaisasi vaiable flag
flug = 0;%Inialisasi variable flug
while loop%Perulangan menggunakan while
keyarray = input('Key yang akan digunakan : ','s');%inputan user
plain = input('Plain text yang akan digunakan : ','s');%Inputan user
char1 = strread(keyarray,'%1q');%membaca inputan user
char2 = strread(keyarray,'%1q'); %membaca inputan user
for x=1:length(char1) %menghitung nilai char1
    for y=1:length(char2) %menghitung nilai char2
        if ((char1{x,1} ==  char2{y,1}) && (x~=y))%memeriksa kesamaan huruf
            fprintf ('Huruf Ada Yang Sama');%PERINGATAN untuk user
            fprintf (' Periksa Kembali');%peringatan untuk user
            fprintf ('\n');
            flag = 1;
            break;
        end
    end
    if (flag == 1)%kondisi flag == 1 maka
        break;
    end
end
if (flag ~= 1)%Kondisi if tidak sama dengan 1
    loop = 0;
    break;
end
end

lowerkey = lower(keyarray);% Lower case pada key yang diberikan

plain = regexprep(plain,'[^\w'']','');% Menghapus spasi pada plain text

%menentukan baris dan kolom plain text dan key
[q,w] = size(plain);
[m,n] = size(keyarray);

fprintf('Plain : %s \n',plain);
fprintf('Key : %s \n',keyarray);
fprintf('Panjang key : %d \n',n);

%Convert char array ke double array
urutan = double(lowerkey);

%Tag untuk urutan pada key
count = 1;

%Menentukan Urutan
for i = 97:1:122   
    hasil = find(urutan==i);
    log = isempty(hasil);
    if log == 0;
        urutan(1,hasil)= count;
        count = count+1;
    end
end

%urutan #Print urutan dari key


%Membuat array kosong berdasarkan banyak kolom key 
[m,n] = size(urutan);
a = char(n,n);


count = 1;
for x = 1:1:n;
    for y = 1:1:n;
        if count == w+1
           break 
        end
        a(x,y) = plain(1,count);
        count = count + 1;
    end
end

fprintf('Cipher : ');
for x = 1:1:max(urutan);
    hasil = find(urutan==x);
    [k,u] = size(hasil);
    if u > 1;
        for g = 1:1:n;
           for h = 1:1:u;
               v = hasil(1,h);
               try
                   fprintf('%s',a(g,v))
               catch
                    break;   
               end
           end
        end
    else
        for g = 1:1:n;
           for h = 1:1:u;
               v = hasil(1,h);
               try
                   fprintf('%s',a(g,v))
               catch
                    break;   
               end
           end
        end 
    end
end
fprintf('\n');
