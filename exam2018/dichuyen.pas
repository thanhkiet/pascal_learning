program gin;
uses crt, math;
var 
	n, m: integer;
	a : array[1..100, 1..100] of integer;
	l : array[0..100, 1..100] of integer;
	vitri: integer;
	col : array[1..100] of integer;
function maxCol: integer;
var 
	ma :integer;
	i : integer;
begin 
	ma := l[1, m];
	vitri := 1;
	for i:=2 to n do if l[i, m] > ma then 
	begin
		ma := l[i, m];
		vitri := i;
	end;
	exit(ma);
end;
procedure nhap;
var 
	f : text;
	i, j : integer;
begin 
	assign(f, 'dichuyen.inp');
	reset(f);
	readln(f, n, m);
	for i:=1 to n do 
	for j:=1 to m do 
	read(f, a[i, j]);
	close(f);
end;

procedure xuli;
var 
	i, j : integer;
begin
	fillchar(l[0], sizeof(l[0]), 0);
	fillchar(l[n+1], sizeof(l[0]),0);
	for i:=1 to n do l[i, 1] := a[i, 1];
	for j:=2 to m do 
	for i:=1 to n do
	l[i, j] := max(max(l[i-1, j-1], l[i+1, j-1]), l[i, j-1])+a[i, j];

end;
procedure truyvet;
var 
	i, j : integer;
	f : text;
begin 
	assign(f, 'dichuyen.out');
	rewrite(f);
	writeln(f, maxCol);
	for j := m downto 1 do 
	begin 
		col[j] := vitri;
		if l[vitri, j] = l[vitri-1, j-1] + a[vitri, j] then dec(vitri);
		if l[vitri, j] = l[vitri+1, j-1] + a[vitri, j] then inc(vitri);
	end;
	for i:=1 to m-1 do write(f, '(',col[i], ', ', i, ')->');
	writeln (f, '(',col[m], ', ', m, ')');
	close(f);
end;
begin 
	nhap;
	xuli;
	truyvet;
	

end.
