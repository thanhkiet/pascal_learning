program gin;
uses crt;
var 
	hang, cot : Integer;
	a : array[0..101, 0..101] of Integer;
procedure init;
var 
	i, j : Integer;
begin 
	write('Nhap so hang: '); readln(hang);
	write('Nhap so cot: '); readln(cot);
	writeln('Nhap chieu cao moi cot: ');
	for i:=1 to hang do 
	for j:=1 to cot do 
	begin
		write('Nhap chieu cao cot [',i,',',j,']: ');
		readln(a[i, j]);
	end;
end;

function tinh: Integer;
var 
	i, j, tong : Integer;
begin 
	tong:=0;
	for i:=1 to hang do 
	for j:=1 to cot do 
	begin 
		if a[i, j] > a[i-1, j] then 
		tong := tong + (a[i, j]-a[i-1, j]);
		if a[i, j] > a[i, j-1] then 
		tong := tong + (a[i, j]-a[i, j-1]);
		if a[i, j] > a[i+1, j] then 
		tong := tong + (a[i, j]-a[i+1, j]);
		if a[i, j] > a[i, j+1] then 
		tong := tong + (a[i, j]-a[i, j+1]);
		inc(tong);
	end;
	exit(tong);
end;

begin 
	init;
	writeln(tinh);
end.
