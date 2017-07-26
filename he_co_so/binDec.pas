(*Chuyển số từ hệ nhị phân sang hệ thập phân *)

program gin;
uses crt;
var 
	bin : string;
function binDec(b : String) : Integer;
var 
	result,i: Integer;
	a,ch : Integer;
begin 	
	result := 0;
	for i := 1 to Length(b) do 
	begin 
		val(b[i],a,ch);
		result := result + a*round(exp((length(b)-i)*ln(2)));
	end;
	exit(result);
end;
begin 
	write('Nhap so o he nhi phan : ');
	readln(bin);
	writeln(binDec(bin));
	readln
end.
