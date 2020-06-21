%deklarasi fungsi v
function v = vigenere
%inisialisasi var count = 27
    count = 27;
    %inisialisasi var alpha
    alpha = 1:count;
    %proses inisialisasi var v
    v = arrayfun(@(n) circshift(alpha, [0, -n]), 0:count-1, ...
        'UniformOutput', false);
    v = reshape([v{:}], count, count);

%deklarasi fungsi menggunakan nama decrypt
function plaintext = decrypt(ciphertext, key)
%inisialisasi var v
    v = vigenere;
    %inisialisasi key 
    key = lower(key) - double('a') + 1;
    key(key < 0) = 27;
    %inisialisasi variable ciphertext = 27
    ciphertext = lower(ciphertext) - double('a') + 1;
    ciphertext(ciphertext < 0) = 27;
    %mereplika key agar panjangnya sama dengan ciphertext
    % Replicate the key so that it is as long as the ciphertext.
    keyIndex = mod(0:(numel(ciphertext)-1), numel(key))+1;
    k = key(keyIndex);
  %Dekripsi Setiap huruf kunci menentukan baris di kotak Vigenere. 
  %Di baris itu, cari indeks kolom dari huruf cipherteks yang sesuai. 
  %Mengkonversi indeks kembali ke huruf untuk menentukan karakter dekripsi
    plaintext = arrayfun(@(m,n) find(v(m,:) == n), k, ciphertext) - 1;
    plaintext(plaintext == 26) = double(' ') - double('a');
    plaintext = upper(char(plaintext + double('a')));
    
%deklarasi fungsi encrypt
function ciphertext = encrypt(plaintext, key) 
v = vigenere;
    % seleksi semua kecuali huruf dan karakter spasi
    exclude = regexp(plaintext, '[^a-zA-Z ]');
    plaintext(exclude) = [];
    % Buat kunci dan plainteks huruf kecil, dan ubah menjadi nilai numerik.
    key = lower(key) - double('a') + 1;
    key(key < 0) = 27;
    plaintext = lower(plaintext) - double('a') + 1;
    plaintext(plaintext < 0) = 27;
    % Ulangi kuncinya sehingga panjangnya sama dengan plaintext.
    keyIndex = mod(0:(numel(plaintext)-1), numel(key))+1;
    k = key(keyIndex);
    % Encrypt: C(n) = V(k(n), plaintext(n))
    ciphertext = arrayfun(@(m,n) v(m,n), k, plaintext) - 1;
    ciphertext(ciphertext == 26) = double(' ') - double('a');
    ciphertext = upper(char(ciphertext + double('a')));

