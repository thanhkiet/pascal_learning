(*Chuyển 1 số tự nhiên thành số la mã*)

program gin;
uses crt;
var 
	n : Integer;
function dec_rom(Dec: LongInt): String;
const
  Nums : Array[1..13] of Integer =
    (1, 4, 5, 9, 10, 40, 50, 90, 100,
      400, 500, 900, 1000);
  RomanNums:  Array[1..13] of string =
    ('I', 'IV', 'V', 'IX', 'X', 'XL',
      'L', 'XC', 'C', 'CD', 'D', 'CM', 'M');
var
  i: Integer;
  result : string;
begin
  Result := '';
  for i := 13 downto 1 do
    while (Dec >= Nums[i]) do
    begin
      Dec := Dec - Nums[i];
      Result  := Result + RomanNums[i];
    end;
    exit(result);
end;

begin 
	write('Nhap so tu nhien : ');
	readln(n);
	writeln(dec_rom(n));
	readln
end.
