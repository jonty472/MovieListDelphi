unit Movie;

interface


type
  MovieDetails = class
    private

    _title: string;
    _releaseDate: integer;
    _rating: integer;
    _status: string;

    public

    constructor Create(title: string; releaseDate: integer; rating: integer);

    property MovieTitle: string read _title write _title;




  end;

implementation

constructor MovieDetails.Create(title: string; releaseDate: Integer; rating: Integer);
begin
  _title := title;
  _releaseDate := releaseDate;
  _rating := rating;
end;

end.
