program Data_MAHASISWA;
uses crt;
var
  Tipedata : Text;
  Nama    : string;
  NPM     : String;
  Jurusan : String;
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
          assign(Tipedata,'Mahasiswa.dat');
          Rewrite(Tipedata);
          Close(Tipedata);
          Writeln('File Data Mahasiswa Berhasil Dibuat !');
          read;
          end;
     2 : Begin
          Assign(Tipedata,'Mahasiswa.dat');
          Append(Tipedata);
          Repeat
           clrscr;
           Write(' Nama Lengkap         :  ');Readln(Nama);
           Write(' NPM                  :  ');Readln(NPM);
           Write(' Jurusan              :  ');Readln(Jurusan);
           Writeln(Tipedata,Nama);
           Writeln(Tipedata,NPM);
           Writeln(Tipedata,Jurusan);
           Writeln;
         write('Apakah ada mau memasukan data yang lain (Y/T): ');
           Tanya := Readkey;
           Until Upcase(Tanya) = 'T';
           Close(Tipedata);
           Writeln('Data telah dimasukan !');
           read;
           end;
      3 : Begin
           Assign(Tipedata,'Mahasiswa.dat');
           Reset(Tipedata);
           Repeat
             Readln(Tipedata,Nama);
             Readln(Tipedata,NPM);
             Readln(Tipedata,Jurusan);
             clrscr;
             Writeln( ' Nama Lengkap   :',Nama);
             Writeln( ' NPM            :',NPM);
             Writeln( ' Jurusan        :',Jurusan);
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
