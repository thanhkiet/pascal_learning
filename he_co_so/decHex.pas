(*chuyển số ở hệ thập phân asg nhệ thập lục phân*)

program gin;
uses crt;
const 
	convern : array[0..15] of String = 
	('0','1','2','3','4','5','6','7','8','9',
		'A','B','C','D','E','F');
var 
	dec : Longint;
function decHex(so : Longint) : string;
var 
	result : string = '';
begin
	repeat 
		insert(convern[so mod 16], result,1);
		so := so div 16;
	until so = 0;
	exit(result);
end;
begin 
	write('Nhap so o he thap phan : ');
	readln(dec);
	writeln(decHex(dec));
	readln
end.
