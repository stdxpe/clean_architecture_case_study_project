// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Movie {

 String get id; String get title; String get description; String get posterUrl; String get director; bool get isFavorite; List<String> get images; String? get actors; String? get awards; String? get country; String? get genre; String? get writer; String? get language; String? get metascore; String? get rated; String? get released; String? get runtime; String? get year; String? get imdbId; String? get imdbRating; String? get imdbVotes; String? get type; bool? get comingSoon;
/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCopyWith<Movie> get copyWith => _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Movie&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.director, director) || other.director == director)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.country, country) || other.country == country)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.language, language) || other.language == language)&&(identical(other.metascore, metascore) || other.metascore == metascore)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.year, year) || other.year == year)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbVotes, imdbVotes) || other.imdbVotes == imdbVotes)&&(identical(other.type, type) || other.type == type)&&(identical(other.comingSoon, comingSoon) || other.comingSoon == comingSoon));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,posterUrl,director,isFavorite,const DeepCollectionEquality().hash(images),actors,awards,country,genre,writer,language,metascore,rated,released,runtime,year,imdbId,imdbRating,imdbVotes,type,comingSoon]);

@override
String toString() {
  return 'Movie(id: $id, title: $title, description: $description, posterUrl: $posterUrl, director: $director, isFavorite: $isFavorite, images: $images, actors: $actors, awards: $awards, country: $country, genre: $genre, writer: $writer, language: $language, metascore: $metascore, rated: $rated, released: $released, runtime: $runtime, year: $year, imdbId: $imdbId, imdbRating: $imdbRating, imdbVotes: $imdbVotes, type: $type, comingSoon: $comingSoon)';
}


}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res>  {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) = _$MovieCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String posterUrl, String director, bool isFavorite, List<String> images, String? actors, String? awards, String? country, String? genre, String? writer, String? language, String? metascore, String? rated, String? released, String? runtime, String? year, String? imdbId, String? imdbRating, String? imdbVotes, String? type, bool? comingSoon
});




}
/// @nodoc
class _$MovieCopyWithImpl<$Res>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? posterUrl = null,Object? director = null,Object? isFavorite = null,Object? images = null,Object? actors = freezed,Object? awards = freezed,Object? country = freezed,Object? genre = freezed,Object? writer = freezed,Object? language = freezed,Object? metascore = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? year = freezed,Object? imdbId = freezed,Object? imdbRating = freezed,Object? imdbVotes = freezed,Object? type = freezed,Object? comingSoon = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,director: null == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,metascore: freezed == metascore ? _self.metascore : metascore // ignore: cast_nullable_to_non_nullable
as String?,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String?,imdbVotes: freezed == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,comingSoon: freezed == comingSoon ? _self.comingSoon : comingSoon // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Movie].
extension MoviePatterns on Movie {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Movie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Movie value)  $default,){
final _that = this;
switch (_that) {
case _Movie():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Movie value)?  $default,){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String posterUrl,  String director,  bool isFavorite,  List<String> images,  String? actors,  String? awards,  String? country,  String? genre,  String? writer,  String? language,  String? metascore,  String? rated,  String? released,  String? runtime,  String? year,  String? imdbId,  String? imdbRating,  String? imdbVotes,  String? type,  bool? comingSoon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.posterUrl,_that.director,_that.isFavorite,_that.images,_that.actors,_that.awards,_that.country,_that.genre,_that.writer,_that.language,_that.metascore,_that.rated,_that.released,_that.runtime,_that.year,_that.imdbId,_that.imdbRating,_that.imdbVotes,_that.type,_that.comingSoon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String posterUrl,  String director,  bool isFavorite,  List<String> images,  String? actors,  String? awards,  String? country,  String? genre,  String? writer,  String? language,  String? metascore,  String? rated,  String? released,  String? runtime,  String? year,  String? imdbId,  String? imdbRating,  String? imdbVotes,  String? type,  bool? comingSoon)  $default,) {final _that = this;
switch (_that) {
case _Movie():
return $default(_that.id,_that.title,_that.description,_that.posterUrl,_that.director,_that.isFavorite,_that.images,_that.actors,_that.awards,_that.country,_that.genre,_that.writer,_that.language,_that.metascore,_that.rated,_that.released,_that.runtime,_that.year,_that.imdbId,_that.imdbRating,_that.imdbVotes,_that.type,_that.comingSoon);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String posterUrl,  String director,  bool isFavorite,  List<String> images,  String? actors,  String? awards,  String? country,  String? genre,  String? writer,  String? language,  String? metascore,  String? rated,  String? released,  String? runtime,  String? year,  String? imdbId,  String? imdbRating,  String? imdbVotes,  String? type,  bool? comingSoon)?  $default,) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.posterUrl,_that.director,_that.isFavorite,_that.images,_that.actors,_that.awards,_that.country,_that.genre,_that.writer,_that.language,_that.metascore,_that.rated,_that.released,_that.runtime,_that.year,_that.imdbId,_that.imdbRating,_that.imdbVotes,_that.type,_that.comingSoon);case _:
  return null;

}
}

}

/// @nodoc


class _Movie implements Movie {
  const _Movie({required this.id, required this.title, required this.description, required this.posterUrl, required this.director, required this.isFavorite, required final  List<String> images, this.actors, this.awards, this.country, this.genre, this.writer, this.language, this.metascore, this.rated, this.released, this.runtime, this.year, this.imdbId, this.imdbRating, this.imdbVotes, this.type, this.comingSoon}): _images = images;
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String posterUrl;
@override final  String director;
@override final  bool isFavorite;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String? actors;
@override final  String? awards;
@override final  String? country;
@override final  String? genre;
@override final  String? writer;
@override final  String? language;
@override final  String? metascore;
@override final  String? rated;
@override final  String? released;
@override final  String? runtime;
@override final  String? year;
@override final  String? imdbId;
@override final  String? imdbRating;
@override final  String? imdbVotes;
@override final  String? type;
@override final  bool? comingSoon;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCopyWith<_Movie> get copyWith => __$MovieCopyWithImpl<_Movie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Movie&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.director, director) || other.director == director)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.country, country) || other.country == country)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.language, language) || other.language == language)&&(identical(other.metascore, metascore) || other.metascore == metascore)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.year, year) || other.year == year)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbVotes, imdbVotes) || other.imdbVotes == imdbVotes)&&(identical(other.type, type) || other.type == type)&&(identical(other.comingSoon, comingSoon) || other.comingSoon == comingSoon));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,posterUrl,director,isFavorite,const DeepCollectionEquality().hash(_images),actors,awards,country,genre,writer,language,metascore,rated,released,runtime,year,imdbId,imdbRating,imdbVotes,type,comingSoon]);

@override
String toString() {
  return 'Movie(id: $id, title: $title, description: $description, posterUrl: $posterUrl, director: $director, isFavorite: $isFavorite, images: $images, actors: $actors, awards: $awards, country: $country, genre: $genre, writer: $writer, language: $language, metascore: $metascore, rated: $rated, released: $released, runtime: $runtime, year: $year, imdbId: $imdbId, imdbRating: $imdbRating, imdbVotes: $imdbVotes, type: $type, comingSoon: $comingSoon)';
}


}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) = __$MovieCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String posterUrl, String director, bool isFavorite, List<String> images, String? actors, String? awards, String? country, String? genre, String? writer, String? language, String? metascore, String? rated, String? released, String? runtime, String? year, String? imdbId, String? imdbRating, String? imdbVotes, String? type, bool? comingSoon
});




}
/// @nodoc
class __$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? posterUrl = null,Object? director = null,Object? isFavorite = null,Object? images = null,Object? actors = freezed,Object? awards = freezed,Object? country = freezed,Object? genre = freezed,Object? writer = freezed,Object? language = freezed,Object? metascore = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? year = freezed,Object? imdbId = freezed,Object? imdbRating = freezed,Object? imdbVotes = freezed,Object? type = freezed,Object? comingSoon = freezed,}) {
  return _then(_Movie(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,director: null == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,metascore: freezed == metascore ? _self.metascore : metascore // ignore: cast_nullable_to_non_nullable
as String?,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String?,imdbVotes: freezed == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,comingSoon: freezed == comingSoon ? _self.comingSoon : comingSoon // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
