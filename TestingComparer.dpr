program TestingComparer;

{$APPTYPE CONSOLE}

{$R *.res}


uses
  System.SysUtils, System.Generics.Defaults, System.Generics.Collections;

type
  TIntegerComparer = class(TComparer<Integer>)
  private
    _integerList: TList<Integer>;
    _compare: IComparer<Integer>;
  public
    constructor Create(myInteger: Integer);
    property Compare: IComparer<Integer> read _compare write _compare;
    property IntegerList: TList<Integer> read _integerList write _integerList;
    function CompareByInteger(const Left, Right: Integer): Integer;
    procedure SortIntegers;
    procedure Sort;
  end;

constructor TIntegerComparer.Create;
begin

end;

function TIntegerComparer.CompareByInteger(const Left, Right: Integer): Integer;
begin
  // Custom comparison logic:
  // Return negative if Left is less than Right,
  // Return 0 if Left is equal to Right,
  // Return positive if Left is greater than Right.
  Result := Left - Right;
end;

procedure TIntegerComparer.Sort;
begin
  IntegerList.Sort(_compare);
end;

procedure TIntegerComparer.SortIntegers;
begin
// need to set property TIntegerCompare.Compare to TComparer<Integer>.Construct(CompareByInteger);

  Compare := TComparer<Integer>.Construct(CompareByInteger);

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

  Writeln('Sorted numbers:');
  for Num in Numbers do
    Writeln(Num);
  readln;
  Numbers.Free;
end.
