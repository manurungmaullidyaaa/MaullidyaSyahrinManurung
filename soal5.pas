program DeretBilangan;

uses crt;

// a. Deret FIBONACCI : 1, 1, 2, 3, 5, 8, 13, ...           
// Metode : Suku ke-3 dst = jumlah dari 2 suku sebelumnya   
// Contoh : 2 = 1+1, 3 = 1+2, 5 = 2+3, dst.                 
// Kita pakai 2 variabel penampung (a dan b) untuk          
// menyimpan 2 suku terakhir, lalu digeser terus.           

procedure Fibonacci(n: integer);
var
    a, b, c, i: integer;
begin
    a := 1; // Suku pertama = 1
    b := 1; // Suku kedua = 1

    for i := 1 to n do
    begin
    if i = 1 then
        write(a) // Cetak suku ke-1 : 1 
    else if i = 2 then
        write(', ', b) // Cetak suku ke-2 : 1
    else
    begin
        // Suku baru = jumlah 2 suku sebelumnya
        c := a + b;
        write(', ', c);

      // Geser nilai: suku lama dibuang, suku baru jadi acuan
      // a jadi b yang lama, b jadi c yang baru
        a := b;
        b := c;
    end;
end;
    writeln;
end;

// b. Deret PANGKAT 2 : 1, 2, 4, 8, 16, 32, ...             
// Metode : Tiap suku = suku sebelumnya dikali 2             
// Atau rumusnya : 2^(i-1). Suku pertama 2^0 = 1            
// Kita pakai cara perkalian berulang biar lebih simpel.    

procedure Pangkat2(n: integer);
var
    i, nilai: integer;
begin
  nilai := 1; // Suku pertama = 1

    for i := 1 to n do
    begin
    if i = 1 then
      write(nilai) // Cetak suku pertama
    else
    begin
      // Suku berikutnya = suku sebelumnya * 2      
      nilai := nilai * 2;
        write(', ', nilai);
    end;
    end;
    writeln;
end;

// c. Deret KUADRAT : 1, 4, 9, 16, 25, ...                  
// Metode : Suku ke-i = i * i atau i pangkat 2              
// Contoh : suku ke-1 = 1*1=1, ke-2 = 2*2=4, ke-3 = 3*3=9  
// Jadi tidak perlu simpan suku sebelumnya, langsung hitung 
// dari nomor urutnya (i).                                  

procedure Kuadrat(n: integer);
var
i: integer;
begin
  // i = nomor urut suku, dari 1 sampai n
    for i := 1 to n do
    begin
    if i = 1 then
      write(i * i) // Suku pertama tanpa koma di depan
    else
      write(', ', i * i); // Suku berikutnya pakai koma
    end;
    writeln;
end;

// d. Deret PRONIK : 2, 6, 12, 20, 30, ...                  
// Metode : Suku ke-i = i * (i + 1)                         
// Contoh : suku ke-1 = 1*2=2, ke-2 = 2*3=6, ke-3 = 3*4=12 
// Sama seperti kuadrat, dihitung langsung dari nomor urut. 

procedure Pronik(n: integer);
var
    i: integer;
begin
  // i = nomor urut suku, dari 1 sampai n
    for i := 1 to n do
begin
    if i = 1 then
      write(i * (i + 1))
    else
      write(', ', i * (i + 1));
end;
    writeln;
end;

// PROGRAM UTAMA                                             
// Alur : 1. Minta input n (jumlah suku yang mau ditampilkan)
//        2. Panggil 4 prosedur di atas satu per satu        
//        3. Tiap prosedur mencetak 1 baris deret            

var
    n: integer;
begin
    clrscr;
    write('Masukkan jumlah suku: ');
  readln(n); // Simpan input user ke variabel n

  // Panggil keempat fungsi deret secara berurutan
  Fibonacci(n); // Cetak baris ke-1
  Pangkat2(n);  // Cetak baris ke-2
  Kuadrat(n);   // Cetak baris ke-3
  Pronik(n);    // Cetak baris ke-4

    readln;
end.