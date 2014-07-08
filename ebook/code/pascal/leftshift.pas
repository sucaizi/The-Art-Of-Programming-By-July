unit leftshift;

interface

// 解法一：暴力移位法
// 左移 1 位
procedure LeftShiftOne(var AStr: string; ALen: Integer);
// 左移 m 位
procedure LeftShiftM(var AStr: string; ALen, ABitNum: Integer);

implementation

procedure LeftShiftOne(var AStr: string; ALen: Integer);
var
  i: Integer;
  c: Char;
begin
  Assert(AStr <> '', 'null');

  c := AStr[1];
  for i := 1 to ALen - 1 do
    AStr[i] := AStr[i + 1];

  AStr[ALen] := c;
end;

procedure LeftShiftM(var AStr: string; ALen, ABitNum: Integer);
begin
  while ABitNum > 0 do
  begin
    LeftShiftOne(AStr, ALen);
    Dec(ABitNum);
  end;
end;

end.
