program gin;
uses crt;
var 
	b : array[1..100] of Integer;
	n : Integer;
	check : array[1..100] of boolean;

function isPrime(k : Integer): boolean;
var 
	i: Integer;
begin
	if k < 2 then exit(false);
	i := 2;
	while (k mod i <> 0) do inc(i);
	if (i=k) then exit(true);
	exit(false);
end;
procedure checkAndPrint;
var 
	i : Integer;
begin 
	if not isPrime (b[2*n]+b[1]) then exit;
	for i := 1 to 2*n-1 do 
	if not isPrime(b[i]+b[i+1]) then exit;
	for i:=1 to 2*n do write(b[i],' ');
	writeln;
end;
procedure try(i : Integer);
var 
	j : Integer;
begin 
	for j:=2 to 2*n do 
	if check[j] then 
	begin 
		b[i] := j;
		if i = 2*n then checkAndPrint else 
		begin 
			check[j] := false;
			try(i+1);
			check[j] := true;
		end;
	end;
end;

begin 
	readln(n);
	b[1]:=1;
	fillchar(check, sizeof(check), true);
	try(2);
	readln
end.
