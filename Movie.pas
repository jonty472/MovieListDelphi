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

    property Title: string read _title;
    property ReleaseDate: Integer read _releaseDate;
    property Rating: Integer read _rating;

  end;

implementation

constructor MovieDetails.Create(title: string; releaseDate: Integer; rating: Integer);
begin
  _title := title;
  _rating := rating;
  _releaseDate := releaseDate;
end;

end.
