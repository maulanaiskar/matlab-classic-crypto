clc;%Membersihkan command window
disp('Diffie Hellman Key Exchange');
%inisialisasi var pktfix1 = 0
pktfix1 = 0;
%inisialisasi var pktfix2 = 0
pktfix2 = 0;

%Seleksi Angka Prima Atau Bukan
%inputan user yang akan disimpan pada variable g 
g = input('Masukkan Nilai g: ');
%inisialisasi var loop = 0
loop = 0;
%perulangan saat loop = 0
while loop == 0
    %masukkan inputan dan disimpan pada var p
    p = input('Masukkan Nilai p: ');
    %mengecek apakah nilai var p merupakan bil prima/tidak dan dimasukkan
    %pada var pp
    pp = isprime(p);
    %jika var pp == 0
    if pp == 0
        %cetak p bukan bil prima
        disp('p bukan prima');
    %jika tidak maka
    else
        %kondisi if dihentikan
      break;
    %end if
    end
%end while
end

%Inputan Shared Key
%inputan user, disimpan pada var shr1
shr1 = input ('Masukkan Nilai Shared Key 1: ');
%inputan user, disimpan pada var shr2
shr2 = input ('Masukkan Nilai Shared Key 2: ');

%Menghitung nilai secret key X1 dan X2
%perulangan, inisialisasi pkt1 = 1 hingga panjang p-1
for pkt1=1:(p-1)
%x1 hasil dari pemangkatan , pkt2 sebagai pangkat dari g
%x1 = powermod(g,pkt1,p);
%operasi mod, disimpan dalam var x1
%syarat jika x1 == shr1
if (x1 == shr1)
    %maka pktfix1 = pkt1
    pktfix1 = pkt1;
    %cetak -----------------------------
    fprintf('----------------------------------------------');
    %cetak baris baru
    fprintf('\n');
    %cetak nilai (Secret key) X1 Adalah , nilai dari pkt1
    fprintf('Nilai (Secret key) X1 Adalah :%d ',pkt1);
    %cetak baris baru
    fprintf('\n');
    break;
%end if
end
%end for
end

%perulangan, inisialisasi pkt2 = 1 hingga panjang p-1
for pkt2=1:(p-1)
%x2 hasil dari pemangkatan , pkt2 sebagai pangkat dari g
%x2 = powermod(g,pkt2,p);
%operasi mod, disimpan dalam var x2
%syarat jika x2 == shr2
    if (x2 == shr2)
    %maka pktfix1 = pkt1
    pktfix2 = pkt2;
    %cetak nilai (Secret key) X1 Adalah , nilai dari pkt1
    fprintf('Nilai (Secret key) X2 Adalah :%d ',pkt2);
    %cetak baris baru
    fprintf('\n');
    %cetak -----------------------------
    fprintf('----------------------------------------------');
    %cetak baris baru
    fprintf('\n');
    break;
    %end if
    end
%end for
end

% Mencari Nilai Y1 dan Y2 Setelah Tukar Key
%hasil pemangkatan dari shr2 dengan pktfix1, disimpan pada var y1

%y1 = powermod (shr2,pktfix1,p);
%operasi mod, disimpan dalam var y1
%hasil pemangkatan dari shr1 dengan pktfix2, disimpan pada var y2
%y2 = powermod (shr1,pktfix2,p);
%operasi mod, disimpan dalam var y2
%cetak nilai Y1 Adalah, nilai dari y1
fprintf('Nilai Y1 Adalah :%d ',y1);
%cetak baris baru
fprintf('\n');
%cetak nilai Y1 Adalah, nilai dari y2
fprintf('Nilai Y2 Adalah :%d ',y2);
%cetak baris baru
fprintf('\n');
%cetak ---------------------------
fprintf('----------------------------------------------');
%cetak baris baru
fprintf('\n');
