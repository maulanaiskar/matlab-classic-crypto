%membuat fungsi bernama polybius
function Polybius
%inisialisasi variable alphabet
Alphabet = {'A','B','C','D','E';'F','G','H','I','K';'L','M','N','O','P';'Q','R','S','T','U';'V','W','X','Y','Z'};
%inisialisasi variable loop bernilai 1
loop = 1;
%perulangan menggunakan while
while loop
%inputan user yang disimpan pada variable str
str = input ('Masukkan Plaintex Anda :','s');
%perulangan for, untuk k = 1 hingga panjang dari nilai variable str
for k = 1:length(str)
%syarat jika salah satu nilai dari str == j 
    if (str(k)) == 'j'
%temukan I dalam variable alphabet
        [row,col] = find(strcmp('I',Alphabet));
%cetak nilai baris
        fprintf('%d',row);
%cetak nilai kolom
        fprintf('%d ',col);
%jika syarat tidak terpenuhi
    else
%temukan setiap nilai dalam variable alphabet pada variable str di uppercase
        [row,col] = find(strcmp(upper(str(k)),Alphabet));
%cetak nilai baris
        fprintf('%d',row);
%cetak nilai kolom
        fprintf('%d ',col);
%end if
    End
%end for
End
%cetak baris baru
fprintf('\n');
%end while
End
%end function
end

