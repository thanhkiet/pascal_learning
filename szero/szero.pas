(*Bai tap co su dung doc File*)
program gin;
uses crt;
var 
	a : array[1..100, 1..100] of Integer;
	hang, cot : Integer;
	f : text;
procedure init;
var 
	f : text;
	i, j : Integer;
begin 
	assign(f,'./szero.inp');
	reset(f);
	readln(f, hang, cot);
	for i:=1 to hang do 
	for j:=1 to cot do 
	read(f, a[i, j]);
	close(f);
end;

function tinh: Integer;
var 
	t, i, j, dem, start, final : Integer;
begin 
	dem := 0;
	for i:=1 to hang do 
	for j:=1 to cot do 
	if a[i, j] = 1 then 
	begin 
		start:=j;
		for t:=start to cot do 
		if a[i, t] = 1 then final := t;
		for t:=start to final do if a[i, t] = 0 then inc(dem);
		break;
	end;
	exit(dem);
end;

begin 
	init;
	assign (f, './szero.out');
	rewrite(f);
	writeln(f, tinh);
	writeln('Ket qua: ', tinh);
	close(f);
	readln
end.
