unit GridItemMovie;

interface


type
 Movie = class

 private

 _movieId: integer;
 _title: string;
 _releaseYear: string;
 _rating: integer;

 public
  constructor Create(movieId: Integer; title: string; relaseYear: string; rating: integer);
  procedure GetMovieId;

end;


implementation

end.
