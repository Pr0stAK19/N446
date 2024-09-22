program n446;

function isPrime(n: integer): Boolean;
var
   maxd, d: integer;
   prime: Boolean;
begin
   maxd := round(sqrt(n));
   prime := true;
   d := 2;
   while (d <= maxd) and prime do begin
      prime := n mod d <> 0;
      d := d + 1;
   end;   
   isPrime := prime;
end;

var
   i, a, b, n: integer;
begin
   a := 0; 
   b := 0;
   Writeln('Введите n:'); Readln(n);
   
   i := 2*n - 1;
   while (i >= n) do begin
      if isPrime(i) then begin 
         a := i;
         if b = 0 then
            b := i;
//         writeln(a, ' ', b);
         if abs(b - a) = 2 then begin
            Writeln('Есть пара: ', a, ' ', b);
            b := a + 2;
            end
         else
            b := a;
      end;
      i := i - 2;
   end;
   Writeln('Это старая правка');
   Writeln('Выбирай светлую сторону');
end.
        

  