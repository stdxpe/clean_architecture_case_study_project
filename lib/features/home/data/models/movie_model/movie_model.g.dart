// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  id: json['id'] as String,
  title: json['Title'] as String,
  description: json['Plot'] as String,
  posterUrl: json['Poster'] as String,
  director: json['Director'] as String,
  images:
      (json['Images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  legacyId: json['_id'] as String?,
  actors: json['Actors'] as String?,
  awards: json['Awards'] as String?,
  country: json['Country'] as String?,
  genre: json['Genre'] as String?,
  writer: json['Writer'] as String?,
  language: json['Language'] as String?,
  metascore: json['Metascore'],
  rated: json['Rated'] as String?,
  released: json['Released'] as String?,
  runtime: json['Runtime'] as String?,
  year: json['Year'] as String?,
  imdbId: json['imdbID'] as String?,
  imdbRating: json['imdbRating'],
  imdbVotes: json['imdbVotes'],
  type: json['Type'] as String?,
  comingSoon: json['ComingSoon'] as bool? ?? false,
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Title': instance.title,
      'Plot': instance.description,
      'Poster': instance.posterUrl,
      'Director': instance.director,
      'Images': instance.images,
      '_id': instance.legacyId,
      'Actors': instance.actors,
      'Awards': instance.awards,
      'Country': instance.country,
      'Genre': instance.genre,
      'Writer': instance.writer,
      'Language': instance.language,
      'Metascore': instance.metascore,
      'Rated': instance.rated,
      'Released': instance.released,
      'Runtime': instance.runtime,
      'Year': instance.year,
      'imdbID': instance.imdbId,
      'imdbRating': instance.imdbRating,
      'imdbVotes': instance.imdbVotes,
      'Type': instance.type,
      'ComingSoon': instance.comingSoon,
      'isFavorite': instance.isFavorite,
    };
