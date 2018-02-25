program gin;
uses crt;
var 
	k, n : string;
	i : longint;
	f : text;

procedure nhap;
var 
	f : text;
begin 
	assign(f, './sovong.inp');
	reset(f);
	read(f,n);
	close(f);
end;

function nhan(a : string; b : integer): string;
var 
	i : integer;
	du, s : integer;
	c, tmp : string;
begin 
	c := '';
	du := 0;
	for i:= length(a) downto 1 do
	begin 
		s := (ord(a[i])-48)*b+du;
		du := s div 10;
		c := chr(s mod 10 + 48) + c;
	end;
	if du > 0 then str(du, tmp) else  tmp := '';
	exit(tmp+c);
end;
function beSorted(s : string): string;
var 
	i, j, len : integer;
	tmp : char;
begin 
	len:=length(s);
	for i:=1 to len - 1 do 
	for j:=i+1 to len do 
	if s[i] > s[j] then 
	begin 
		tmp := s[i];
		s[i] := s[j];
		s[j] := tmp;
	end;
	exit(s);
end;
function check(s : string): boolean;
var 
	re : string;
	i : integer;
begin 
	re := beSorted(s);
	for i:=1 to length(s) do 
	if re<>beSorted(nhan(s, i)) then exit(false);
	exit(true);
end;
begin 
	nhap;
	assign(f, './sovong.out');
	rewrite(f);
	if check(n) then writeln(f, n, ' la so vong') else 
	writeln(f, n, ' khong la so vong');
	close(f);
	readln;
end.
