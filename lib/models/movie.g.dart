// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    originalTitle: json['original_title'] as String,
    posterPath: json['poster_path'] as String,
    video: json['video'] as bool,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    overview: json['overview'] as String,
    releaseDate: json['release_date'] == null
        ? null
        : DateTime.parse(json['release_date'] as String),
    title: json['title'] as String,
    popularity: (json['popularity'] as num)?.toDouble(),
    adult: json['adult'] as bool,
    id: json['id'] as int,
    backdropPath: json['backdrop_path'] as String,
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    voteCount: json['vote_count'] as int,
    originalLanguage: json['original_language'] as String,
  );
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'release_date': instance.releaseDate?.toIso8601String(),
      'title': instance.title,
      'popularity': instance.popularity,
      'adult': instance.adult,
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'vote_count': instance.voteCount,
      'original_language': instance.originalLanguage,
    };
