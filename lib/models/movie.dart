import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

/// Una anotación para el auto-generador de código para que sepa que en esta clase
/// necesita generarse lógica de serialización JSON.
@JsonSerializable()


class Movie {
  Movie({
    this.originalTitle,
    this.posterPath,
    this.video,
    this.voteAverage,
    this.overview,
    this.releaseDate,
    this.title,
    this.popularity,
    this.adult,
    this.id,
    this.backdropPath,
    this.genreIds,
    this.voteCount,
    this.originalLanguage,
  });

  @JsonKey(name: 'original_title')
  String originalTitle;

  @JsonKey(name: 'poster_path')
  String posterPath;

  bool video;

  @JsonKey(name: 'vote_average')
  double voteAverage;

  String overview;

  @JsonKey(name: 'release_date')
  DateTime releaseDate;

  String title;

  double popularity;

  bool adult;

  int id;

  @JsonKey(name: 'backdrop_path')
  String backdropPath;

  @JsonKey(name: 'genre_ids')
  List<int> genreIds;

  @JsonKey(name: 'vote_count')
  int voteCount;

  @JsonKey(name: 'original_language')
  String originalLanguage;

  /// Un método constructor de tipo factory es necesario para crear una nueva instancia User
  /// desde un mapa. Pasa el mapa al constructor auto-generado `_$MovieFromJson()`.
  /// El constructor es nombrado después de la clase fuente, en este caso User.
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  /// `toJson` es la convención para una clase declarar que soporta serialización
  /// a JSON. La implementación simplemente llama al método de ayuda privado
  /// `_$MovieToJson`.
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
