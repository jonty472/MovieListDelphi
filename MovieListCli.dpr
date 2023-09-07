program MovieListCli;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Generics.Defaults,
  System.Generics.Collections,
  Movie in 'Movie.pas',
  MovieWatchlist in 'MovieWatchlist.pas';

begin

var
  movie1, movie2: MovieDetails;
  CompareByRating: IComparer<MovieDetails>;
  CompareByReleaseDate: IComparer<MovieDetails>;
  MyList: TList<MovieDetails>;
  Item: MovieDetails;

  try
  movie1 := MovieDetails.Create('gladiator', 10, 2000);
  movie2 := MovieDetails.Create('oldboy', 8, 2003);

  CompareByRating := MovieComparer.Create;
  CompareByRating.Compare(movie1, movie2);

  MyList := TObjectList<MovieDetails>.Create;

  MyList.Add(movie1);
  MyList.Add(movie2);

  MyList.Sort(CompareByRating);

  for Item in MyList do
  begin
    writeln(Item.Title, Item.ReleaseDate);
  end;


  readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
