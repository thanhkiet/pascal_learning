(*Chuyển số từ hệ thập lục phân sang hệ thập phân*)

program gin;
uses crt;
var 
	n : string;
function hexDec(k : string): Integer;
var 
	rom : array['0'..'F'] of Integer;
	result, i : Integer;
	t : char;
begin 
	k := upcase(k);
	for t := '0' to '9' do rom[t] := ord(t)-48;
	for t := 'A' to 'F' do rom[t] := ord(t)-55;
	result :=0;
	for i := 1 to length(k) do 
	result := result + rom[k[i]]*round(exp((length(k)-i)*ln(16)));
	exit(result);
end;
begin 
	write('Nhap so o he thap luc phan : ');
	readln(n);
	writeln(hexDec(n));
end.

