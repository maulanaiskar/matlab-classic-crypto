pilih = 0;
while pilih ~=3
    disp('Enkripsi dan Dekripsi Caesar Chiper')
    disp('1. Enkripsi')
    disp('2. Dekripsi')
    disp('3. Keluar')
    pilih = input('Pilih Angka: ');

    switch pilih
        case{1}
            plain = input('Masukkan Plaintext : ', 's');
            key = input('Masukkan Key antara 1-25: ');

            en = char(mod(upper(plain)-'A'+key,26)+'A');

            fprintf('Plain Text : %s\n', plain);
            fprintf('Enkripsi : %s\n', en);

        case{2}
            chiper = input('Masukkan Chipertext: ', 's');
            key = input('Masukkan Key antara 1-25: ');

            de = char(mod(upper(chiper)-'A'-key,26)+'A');

            fprintf('Chipertext : %s\n', chiper);
            fprintf('Dekripsi : %s\n', de);
        case{3}
            disp('out');
    end
end