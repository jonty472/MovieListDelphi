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

var object1, object2: MovieDetails;

var CompareByRating: IComparer<MovieDetails>;

var CompareByReleaseDate: IComparer<MovieDetails>;

var MyList: TList<MovieDetails>;

var Item: MovieDetails;

  try
  object1 := MovieDetails.Create('gladiator', 10, 2000);
  object2 := MovieDetails.Create('oldboy', 8, 2003);

  CompareByRating := MovieComparer.Create;
  CompareByRating.Compare(object1, object2);

  MyList := TObjectList<MovieDetails>.Create;

  MyList.Add(object1);
  MyList.Add(object2);

  MyList.Sort(MyComparer);

  for Item in MyList do
  begin
    writeln(Item.Title, Item.ReleaseDate);
  end;



  Writeln('hello world');

  readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
