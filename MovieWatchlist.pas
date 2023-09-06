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
  function CompareByReleaseDate(const Left, Right: MovieDetails): Integer;
  function CompareByTitle(const Left, Right: MovieDetails): Integer;
  end;


implementation

function MovieComparer.Compare(const Left: MovieDetails; const Right: MovieDetails): Integer;
begin
  if Left.Rating < Right.Rating then
    Result := 1
  else if Left.Rating > Right.Rating then
    Result := -1
  else
    Result := 0
end;

function CompareByReleaseDate(const Left, Right: MovieDetails): Integer;
begin
  if Left.ReleaseDate < Right.ReleaseDate then begin
    Result := 1;
  end; if Left.ReleaseDate > Right.ReleaseDate then begin
    Result := -1;
  end else begin
    Result := 0;
  end;
end;

function MovieComparer.CompareByTitle(const Left, Right: MovieDetails): Integer;
begin
  if Left.Title < Right.Title then begin
    Result := -1;
  end; if Left.Title > Right.Title then begin
    Result := 1;
  end else begin
    Result := 0;
  end;

end;

end.
