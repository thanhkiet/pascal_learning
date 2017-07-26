(*chuyển số ở hệ thập phân sang hệ nhị phân*)

program gin;
uses crt;
var
	dec : Integer;
function decBin(d : Integer) : string;
var 
	chuoi : string;
	a : string;
begin 
	chuoi := '';
	repeat 
		str(d mod 2,a);
		insert(a, chuoi, 1);
		d := d div 2;
	until d = 0;
	exit (chuoi);
end;
begin 
	write('Nhap he thap phan : ');
	readln(dec);
	writeln(decBin(dec));
	readln
end.
