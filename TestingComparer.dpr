program TestingComparer;

{$APPTYPE CONSOLE}

{$R *.res}


uses
  System.SysUtils, System.Generics.Defaults, System.Generics.Collections;

type
  TIntegerComparer = class(TComparer<Integer>)
  public
    function Compare(const Left, Right: Integer): Integer; override;
  end;

function TIntegerComparer.Compare(const Left, Right: Integer): Integer;
begin
  // Custom comparison logic:
  // Return negative if Left is less than Right,
  // Return 0 if Left is equal to Right,
  // Return positive if Left is greater than Right.
  Result := Left - Right;
end;

var
  Numbers: TList<Integer>;
  Comparer: IComparer<Integer>;
  Num: Integer;

begin
  Numbers := TList<Integer>.Create;
  Numbers.AddRange([5, 2, 8, 1, 3]);

  // Sorting using the custom comparer
  Comparer := TIntegerComparer.Create;
  Numbers.Sort(Comparer);

  Writeln('Sorted numbers:');
  for Num in Numbers do
    Writeln(Num);
  readln;
  Numbers.Free;
end.
