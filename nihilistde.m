% function decrypt = buka(wahyu,angkakunci)
sandi=[56 44 55 46 44 55 66 22];
kunci=[11 12 13 14];
x=length(sandi);
k=length(kunci);
j=1;
for i=1:x
  if(j==k+1)
  j=1;
  end
  sx(i)=sandi(i)-kunci(j);
  j=j+1;
end
fprintf('%i',sx);
fprintf('\n');
cipher=(sx);
c=length(cipher);
matrix=['ABCDE';'FGHIK';'LMNOP';'QRSTU';'VWXYZ'];
matriks=[11 12 13 14 15;21 22 23 24 25;31 32 33 34 35;41 42 43 44 45;51 52 53 54 55];
for l=1:c
  for i=1:5
   for j=1:5
 if cipher(l) == matriks(i,j)
    buka(l) = matrix(i,j);
 end
     end
  end
end
fprintf('teks = ');
fprintf('%c ',buka );
fprintf('\n');
return
