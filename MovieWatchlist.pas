unit MovieWatchlist;

interface

uses
  System.Generics.Defaults,
  System.Generics.Collections,
  Movie;

type
  MovieComparer = class(TInterfacedObject, IComparer<MovieDetails>)
  public

  function Compare(const Left, Right: MovieDetails): Integer;
  end;


implementation

function MovieComparer.Compare(const Left: MovieDetails; const Right: MovieDetails): Integer;
begin
  if Left.Rating > Right.Rating then
    Result := 1
  else if Left.Rating < Right.Rating then
    Result := -1
  else
    Result := 0
end;

end.
