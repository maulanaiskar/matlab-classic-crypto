Morignal= input ('Enter your plain text=','s'); %inputan user
key='BALOON'; %kunci yang diberikan
s= length (Morignal); %menghitung panjang inputan user
x= mod (s,2); %mod 2 dengan nilai inputan user
if (x==1) %jika hasilnya 1 maka
Morignal(s+1)='X'; %sisanya akan diberi nilai X
end 
for i=1:1:length(key)-2 %kondisi untuk panjang kunci
if key(i)== key(i+1) %jika panjang kunci i tidak sama dengan i+1 
key(i+1)='X'; %maka nilainya akan diganti X
end 
end

%jika plainteks mempunyai jumlah ganjil, tambahkan X 
if mod ( length (key),2)==1 %perhitungan pengecekan jumlah key
key=[key 'X']; %jika ada sisa 1 maka ditambah X
end 
ALPHA='ABCDEFGHIKLMNOPQRSTUVWXYZ'; %kamus alfabet yang diguunakan
for i=1:1:length(key) %perulangan untuk ALPHA
ALPHA==key(i); %alfabet dengan kunci
ALPHA(ALPHA==key(i))=[]; %menempatkan alfabt dengan array
end 
ALPHA=[key ALPHA]; %mengubah alfabet ke kunci
ALPHA=transpose(ALPHA); %mengubah alfabet ke array
ALPHA=reshape(ALPHA,5,5); %menentukan jumlah kolom dan baris
ALPHA=transpose(ALPHA) %mengubah alfabet ke array
for i=1:2:(length(Morignal)-1)  %kondisi untuk inputan user
[r,c]= find (ALPHA==Morignal(i)); %mencari indeks untuk inoutan
[r1,c1]= find (ALPHA==Morignal(i+1)); %mencari indeks untuk key
if(r1==r)  %jika row nya sama maka akan dilakukan perhitungan
c1=c1+1; %kolom yang sama dan 1 kolom selanjutnya
c=c+1;  %kolom yang sama dan 1 kolom sebelumnya
if(c1>5) %jika kolom nya lebih dari 5 maka
c1=1; %kolom yang dimaksud adalah kolom pertama
end 
if (c>5) %jika kolom lebih dari 5
c=1; %kolom yang dimaksud kolom pertama
end 
elseif (c1==c) %jika terdapat pada kolom yang sma
r1=r1+1; %nilai yang diambil 2 baris setelahnya
r=r+1; %nilai yang ditampilkan 1 baris setelahnya
if (r1>5) %jika baris lebih dari 5
r1=1; %nilai yang ditampilkan adalah baris pertama
end 
if (r>5) %jika baris lebih dari 5
r=1; %nilai yang ditampilkan ada baris pertama
end 
else 
z=c1; %penyimpanan nilai c1
c1=c; %replace nilai c1 
c=z; %nilai c adalah z

end 
Morignal(i)=ALPHA(r,c); %menyimpan nilai baris dan kolom
Morignal(i+1)=ALPHA(r1,c1); %menyimpan nilai yang didapatkan
end 
Morignal
