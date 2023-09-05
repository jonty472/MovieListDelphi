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

var MyComparer: IComparer<MovieDetails>;

var MyList: TList<MovieDetails>;

var Item: MovieDetails;

  try
  object1 := MovieDetails.Create('gladiator', 10, 2000);
  object2 := MovieDetails.Create('oldboy', 8, 2003);

  myComparer := MovieComparer.Create;
  MyComparer.Compare(object1, object2);

  MyList := TList<MovieDetails>.Create;
  
  MyList.Sort(myComparer);

  for Item in MyList do
  begin
    writeln(Item.ReleaseDate);
    readln;
  end;
    
  


  Writeln('hello world');

  readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
