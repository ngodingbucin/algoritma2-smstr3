program Data_Barang;
uses crt;
var
  Tipedata : Text;
  Nambar : string;
  Jumbar : String;
  Harsat : String;
  Total  : string;
  Tanya  : char;
  Pilihan : shortint;
begin
  repeat
   clrscr;
   writeln;
   writeln('    Pilih Salah Satu Menu : ');
   writeln('    --------------------------------');
   writeln('     1. Membuat File Data Baru ');
   writeln('     2. Memasukan data baru ');
   writeln('     3. Menampilkan Data ');
   writeln('     4. Keluar');
   writeln('    --------------------------------');
   Write('      Pilihan Anda    :');Readln(Pilihan);
   case Pilihan of
     1 : Begin
          assign(Tipedata,'Barang.dat');
          Rewrite(Tipedata);
          Close(Tipedata);
          Writeln('File Barang Berhasil Dibuat !');
          read;
          end;
     2 : Begin
          Assign(Tipedata,'Barang.dat');
          Append(Tipedata);
          Repeat
           clrscr;
           Write(' Nama Barang          :  ');Readln(Nambar);
           Write(' Jumlah Barang        :  ');Readln(Jumbar);
           Write(' Harga Satuan         :  ');Readln(Harsat);
           Write(' Total                :  ');Readln(Total);
           Writeln(Tipedata,Nambar);
           Writeln(Tipedata,Jumbar);
           Writeln(Tipedata,Harsat);
           Writeln(Tipedata,Total);
           Writeln;
         write('Apakah ada mau memasukan data yang lain (Y/T): ');
           Tanya := Readkey;
           Until Upcase(Tanya) = 'T';
           Close(Tipedata);
           Writeln('Data telah dimasukan !');
           read;
           end;
      3 : Begin
           Assign(Tipedata,'Barang.dat');
           Reset(Tipedata);
           Repeat
             Readln(Tipedata,Nambar);
             Readln(Tipedata,Jumbar);
             Readln(Tipedata,Harsat);
             Readln(Tipedata,Total);
             clrscr;
             Writeln( ' Nama Barang    :',Nambar);
             Writeln( ' Jumlah Barang  :',Jumbar);
             Writeln( ' Harga Satuan   :',Harsat);
             Writeln( ' Total          :',Total);
             writeln;
             if Nambar = '' Then Tanya :='T'
             else
             begin
             Write('Apakah anda mau melihat data berikutnya ?(Y/T): ');
             Tanya := Readkey;
             end;
           until upcase(Tanya)='T';
           Close(Tipedata);
           end;
      else
      end;
     until pilihan=4;
end.
