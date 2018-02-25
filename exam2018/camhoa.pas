program gin;
uses crt;
var 
	a, l : array[0..100, 0..100] of integer;
	kt : array[1..100] of integer;
	n, k : integer;
procedure nhap;
var 
	i, j : integer;
	f : text;
begin
	assign(f, './camhoa.inp');
	reset(f);
	readln(f, n, k);
	for i:=1 to k do 
	for j:=1 to n do begin
	read(f, a[i, j]);  end;
	close(f);
end;
function sum(i:byte):integer;
var 
	j:byte; s:integer;
begin
	s:=0;
	for j:=1 to i do s:=s+a[j,j];
	sum:=s;
end;
procedure xuli;
var 
	i, j : integer;
begin 
	for i:=0 to k do
	for j:=0 to n do l[i,j]:=low(integer);
	for i:=0 to k do 
	for j:=i to n do 
	if i = j then 
	begin 
		l[i, j]:= sum(i);
		kt[i] := j
	end
	else if i<j then 
	if l[i-1, j-1]+a[i, j] >= l[i, j-1] then 
	begin 
		l[i, j] := l[i-1, j-1]+a[i, j];
		kt[i] := j;
	end else l[i, j] := l[i, j-1];
end;
procedure truyvet;
var 
	i : integer;
	f : text;
begin 
	assign(f, 'camhoa.out');
	rewrite(f);
	writeln(f, l[k,n]);
	for i:=1 to k do writeln(f, i,' ',kt[i]);
	close(f);
end;

begin 
	nhap;
	xuli;
	truyvet;
	
end.
