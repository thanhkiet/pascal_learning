program fawkes ;
uses crt;
var w: word;
PROCEDURE treoco;
	var word,mean: array[1..100] of string;
	ranword,sec: string;
	i,ran,dem,dem1: integer;
	ans: char;
	wordfile: text;
begin 
	clrscr;
	assign(wordfile,'d:\pascal\pet\list.txt');
	reset(wordfile);
	i:=0;
	while not eof(wordfile) do begin 
	i:=i+1;
	readln(wordfile,word[i]);
	end;
	close(wordfile);
	i:=0;
	assign(wordfile,'d:\pascal\pet\supp.txt');
	reset(wordfile);
	while not eof(wordfile) do begin
	i:=i+1;
	readln(wordfile,mean[i]);
	end;
	close(wordfile);
	dem:= 15;
	ran := random(i);
	ranword:= word[ran];
	dem1:= length(ranword);
	{tu bay gio tu can tim kiem la ranword}
	sec:='';
	for i:=1 to length(ranword) do 
	sec:=sec+'*';
	repeat
	clrscr;
	writeln('Goi y: ',mean[ran]);
	writeln(sec);
	writeln('Ban con ',dem,' lan');
	write('Nhap tu : '); readln(ans);
	for i:=1 to length(ranword) do if upcase(ans) = ranword[i] then begin sec[i]:= ranword[i];dem1:=dem1-1; end;
	dec(dem);
	until (dem = 0) or (dem1 = 0) ;
	clrscr;
	if sec= ranword then 
	writeln('Chuc mung ban ',sec,' chinh la dap an!!!') 
	else 
	writeln('Game Over, tu can tim la ', ranword);
	readln;
end;
PROCEDURE fun; 
	begin 
	clrscr;
	repeat
	clrscr; 
	textcolor(random(14));
	textbackground(random(14));
	writeln('Press Enter to exit');
	until keypressed;
	readln;
	end;
PROCEDURE mofiletext;
	var typ,address: string;
		f: text;
	begin 
	clrscr;
	write('Nhap duong dan (vui long nhap dung neu khong tu thoat chuong trinh)  :  '); readln(address);
	assign(f,address);
	reset(f);
	while not eof(f) do begin
	while not eoln (f) do begin read(f,typ); write(typ) end;
	readln(f);
	writeln;
	end;
	close(f);
	readln
	end;
PROCEDURE mahoa;
	var word: string;
		i: integer;
	begin
	clrscr;
	write('Nhap van ban can ma hoa: (ASCII) ');readln(word);
	for i:=1 to length(word) do begin  write(ord(upcase(word[i]))); end;
	readln
	end;
PROCEDURE giaima;
	var secr,chuoi: string;
		so,i,r: integer;
	begin 
	clrscr;
	write('Nhap ma can giai: (ASCII) '); readln(secr);
	if length(secr) mod 2 = 0 then begin
	i:=1;
	while i< length(secr) do 
	begin
	chuoi:= secr[i] + secr[i+1];
	val(chuoi,so,r);
	write(chr(so));
	i:=i+2
	end end else writeln('Nhap sai.');
	readln
	end;
PROCEDURE maumanhinh;
	var i: integer;
	begin
	writeln('Dong trong la mau man hinh: ');
	for i:=1 to 14 do 
	begin
	textcolor(i);
	writeln(i,'=============');
	end;
	readln
	end;
PROCEDURE MENU;
	var luachon: string;
	BEGIN
	clrscr;
	writeln('====================================');
	writeln('===========MY PET PROJECT===========');
	writeln;
	writeln('==MENU==');
	writeln('1.Treo co');
	writeln('2.Fun');
	writeln('3.Mo file text');
	writeln('4.Ma hoa');
	writeln('5.Giai ma');
	writeln('6.Mau man hinh');
	writeln('7.Thoat');
	write('Nhap lua chon cua ban : '); readln(luachon);
	case luachon of 
	'1': treoco;
	'2': fun;
	'3': mofiletext;
	'4': mahoa;
	'5': giaima;
	'6': maumanhinh;
	'7': w:=1;
	else  begin writeln('Khong co lua chon nao nhu vay'); delay(500) end;
	end;
	end;
begin
	w:=0;
	randomize;
	clrscr;
	repeat
	textcolor(6);
	menu;
	until w=1;

	clrscr;
	end.
{Written by thanhkiet}