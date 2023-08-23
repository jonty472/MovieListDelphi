unit MovieWatchlist;

interface

uses
  System.Generics.Defaults,
  System.Generics.Collections,
  Movie;

type
  Watchlist = class
    private

    _movieWatchlist: TObjectList<MovieDetails>;
    _lastSort: string;
    _comparer: IComparer<MovieDetails>;

    // need a dict to store MovieDetails and current watchlist order which
    // should be an integer. Ideally Dict<order, MovieDetails>


    public

    constructor Create(movieWatchlist: TObjectList<MovieDetails>);

    // use these functions with a comparer instance
    function SortByName(movieItem1: MovieDetails;
                              movieItem2: MovieDetails): integer;

    function SortHighestRating(movieItem1: MovieDetails;
                               movieItem2: MovieDetails): integer;

  end;
implementation

constructor Watchlist.Create(movieWatchlist: TObjectList<MovieDetails>);
begin
  _movieWatchlist := movieWatchlist;
end;

function Watchlist.SortByName(movieItem1: MovieDetails; movieItem2: MovieDetails): Integer;
begin
// somehow sort by MovieDetails _movieTitle

end;

function Watchlist.SortHighestRating(movieItem1: MovieDetails; movieItem2: MovieDetails): Integer;
begin
// if movieItem1 > movieItem2
  // return 1
// if movieItem 1 < movieItem2
  //return -1
// else
  // return := -result
end;




end.
