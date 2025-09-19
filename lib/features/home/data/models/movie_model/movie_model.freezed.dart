// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieModel {

 String get id;@JsonKey(name: 'Title') String get title;@JsonKey(name: 'Plot') String get description;@JsonKey(name: 'Poster') String get posterUrl;@JsonKey(name: 'Director') String get director;@JsonKey(name: 'Images') List<String> get images;@JsonKey(name: '_id') String? get legacyId;@JsonKey(name: 'Actors') String? get actors;@JsonKey(name: 'Awards') String? get awards;@JsonKey(name: 'Country') String? get country;@JsonKey(name: 'Genre') String? get genre;@JsonKey(name: 'Writer') String? get writer;@JsonKey(name: 'Language') String? get language;@JsonKey(name: 'Metascore') dynamic get metascore;@JsonKey(name: 'Rated') String? get rated;@JsonKey(name: 'Released') String? get released;@JsonKey(name: 'Runtime') String? get runtime;@JsonKey(name: 'Year') String? get year;@JsonKey(name: 'imdbID') String? get imdbId;@JsonKey(name: 'imdbRating') dynamic get imdbRating;@JsonKey(name: 'imdbVotes') dynamic get imdbVotes;@JsonKey(name: 'Type') String? get type;@JsonKey(name: 'ComingSoon') bool get comingSoon; bool get isFavorite;
/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieModelCopyWith<MovieModel> get copyWith => _$MovieModelCopyWithImpl<MovieModel>(this as MovieModel, _$identity);

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.director, director) || other.director == director)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.legacyId, legacyId) || other.legacyId == legacyId)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.country, country) || other.country == country)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.metascore, metascore)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.year, year) || other.year == year)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&const DeepCollectionEquality().equals(other.imdbRating, imdbRating)&&const DeepCollectionEquality().equals(other.imdbVotes, imdbVotes)&&(identical(other.type, type) || other.type == type)&&(identical(other.comingSoon, comingSoon) || other.comingSoon == comingSoon)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,posterUrl,director,const DeepCollectionEquality().hash(images),legacyId,actors,awards,country,genre,writer,language,const DeepCollectionEquality().hash(metascore),rated,released,runtime,year,imdbId,const DeepCollectionEquality().hash(imdbRating),const DeepCollectionEquality().hash(imdbVotes),type,comingSoon,isFavorite]);

@override
String toString() {
  return 'MovieModel(id: $id, title: $title, description: $description, posterUrl: $posterUrl, director: $director, images: $images, legacyId: $legacyId, actors: $actors, awards: $awards, country: $country, genre: $genre, writer: $writer, language: $language, metascore: $metascore, rated: $rated, released: $released, runtime: $runtime, year: $year, imdbId: $imdbId, imdbRating: $imdbRating, imdbVotes: $imdbVotes, type: $type, comingSoon: $comingSoon, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $MovieModelCopyWith<$Res>  {
  factory $MovieModelCopyWith(MovieModel value, $Res Function(MovieModel) _then) = _$MovieModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Plot') String description,@JsonKey(name: 'Poster') String posterUrl,@JsonKey(name: 'Director') String director,@JsonKey(name: 'Images') List<String> images,@JsonKey(name: '_id') String? legacyId,@JsonKey(name: 'Actors') String? actors,@JsonKey(name: 'Awards') String? awards,@JsonKey(name: 'Country') String? country,@JsonKey(name: 'Genre') String? genre,@JsonKey(name: 'Writer') String? writer,@JsonKey(name: 'Language') String? language,@JsonKey(name: 'Metascore') dynamic metascore,@JsonKey(name: 'Rated') String? rated,@JsonKey(name: 'Released') String? released,@JsonKey(name: 'Runtime') String? runtime,@JsonKey(name: 'Year') String? year,@JsonKey(name: 'imdbID') String? imdbId,@JsonKey(name: 'imdbRating') dynamic imdbRating,@JsonKey(name: 'imdbVotes') dynamic imdbVotes,@JsonKey(name: 'Type') String? type,@JsonKey(name: 'ComingSoon') bool comingSoon, bool isFavorite
});




}
/// @nodoc
class _$MovieModelCopyWithImpl<$Res>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._self, this._then);

  final MovieModel _self;
  final $Res Function(MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? posterUrl = null,Object? director = null,Object? images = null,Object? legacyId = freezed,Object? actors = freezed,Object? awards = freezed,Object? country = freezed,Object? genre = freezed,Object? writer = freezed,Object? language = freezed,Object? metascore = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? year = freezed,Object? imdbId = freezed,Object? imdbRating = freezed,Object? imdbVotes = freezed,Object? type = freezed,Object? comingSoon = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,director: null == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,legacyId: freezed == legacyId ? _self.legacyId : legacyId // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,metascore: freezed == metascore ? _self.metascore : metascore // ignore: cast_nullable_to_non_nullable
as dynamic,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as dynamic,imdbVotes: freezed == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as dynamic,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,comingSoon: null == comingSoon ? _self.comingSoon : comingSoon // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieModel].
extension MovieModelPatterns on MovieModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Plot')  String description, @JsonKey(name: 'Poster')  String posterUrl, @JsonKey(name: 'Director')  String director, @JsonKey(name: 'Images')  List<String> images, @JsonKey(name: '_id')  String? legacyId, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Metascore')  dynamic metascore, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'imdbID')  String? imdbId, @JsonKey(name: 'imdbRating')  dynamic imdbRating, @JsonKey(name: 'imdbVotes')  dynamic imdbVotes, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'ComingSoon')  bool comingSoon,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.posterUrl,_that.director,_that.images,_that.legacyId,_that.actors,_that.awards,_that.country,_that.genre,_that.writer,_that.language,_that.metascore,_that.rated,_that.released,_that.runtime,_that.year,_that.imdbId,_that.imdbRating,_that.imdbVotes,_that.type,_that.comingSoon,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Plot')  String description, @JsonKey(name: 'Poster')  String posterUrl, @JsonKey(name: 'Director')  String director, @JsonKey(name: 'Images')  List<String> images, @JsonKey(name: '_id')  String? legacyId, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Metascore')  dynamic metascore, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'imdbID')  String? imdbId, @JsonKey(name: 'imdbRating')  dynamic imdbRating, @JsonKey(name: 'imdbVotes')  dynamic imdbVotes, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'ComingSoon')  bool comingSoon,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that.id,_that.title,_that.description,_that.posterUrl,_that.director,_that.images,_that.legacyId,_that.actors,_that.awards,_that.country,_that.genre,_that.writer,_that.language,_that.metascore,_that.rated,_that.released,_that.runtime,_that.year,_that.imdbId,_that.imdbRating,_that.imdbVotes,_that.type,_that.comingSoon,_that.isFavorite);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Plot')  String description, @JsonKey(name: 'Poster')  String posterUrl, @JsonKey(name: 'Director')  String director, @JsonKey(name: 'Images')  List<String> images, @JsonKey(name: '_id')  String? legacyId, @JsonKey(name: 'Actors')  String? actors, @JsonKey(name: 'Awards')  String? awards, @JsonKey(name: 'Country')  String? country, @JsonKey(name: 'Genre')  String? genre, @JsonKey(name: 'Writer')  String? writer, @JsonKey(name: 'Language')  String? language, @JsonKey(name: 'Metascore')  dynamic metascore, @JsonKey(name: 'Rated')  String? rated, @JsonKey(name: 'Released')  String? released, @JsonKey(name: 'Runtime')  String? runtime, @JsonKey(name: 'Year')  String? year, @JsonKey(name: 'imdbID')  String? imdbId, @JsonKey(name: 'imdbRating')  dynamic imdbRating, @JsonKey(name: 'imdbVotes')  dynamic imdbVotes, @JsonKey(name: 'Type')  String? type, @JsonKey(name: 'ComingSoon')  bool comingSoon,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.posterUrl,_that.director,_that.images,_that.legacyId,_that.actors,_that.awards,_that.country,_that.genre,_that.writer,_that.language,_that.metascore,_that.rated,_that.released,_that.runtime,_that.year,_that.imdbId,_that.imdbRating,_that.imdbVotes,_that.type,_that.comingSoon,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieModel extends MovieModel {
  const _MovieModel({required this.id, @JsonKey(name: 'Title') required this.title, @JsonKey(name: 'Plot') required this.description, @JsonKey(name: 'Poster') required this.posterUrl, @JsonKey(name: 'Director') required this.director, @JsonKey(name: 'Images') final  List<String> images = const [], @JsonKey(name: '_id') this.legacyId, @JsonKey(name: 'Actors') this.actors, @JsonKey(name: 'Awards') this.awards, @JsonKey(name: 'Country') this.country, @JsonKey(name: 'Genre') this.genre, @JsonKey(name: 'Writer') this.writer, @JsonKey(name: 'Language') this.language, @JsonKey(name: 'Metascore') this.metascore, @JsonKey(name: 'Rated') this.rated, @JsonKey(name: 'Released') this.released, @JsonKey(name: 'Runtime') this.runtime, @JsonKey(name: 'Year') this.year, @JsonKey(name: 'imdbID') this.imdbId, @JsonKey(name: 'imdbRating') this.imdbRating, @JsonKey(name: 'imdbVotes') this.imdbVotes, @JsonKey(name: 'Type') this.type, @JsonKey(name: 'ComingSoon') this.comingSoon = false, this.isFavorite = false}): _images = images,super._();
  factory _MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'Title') final  String title;
@override@JsonKey(name: 'Plot') final  String description;
@override@JsonKey(name: 'Poster') final  String posterUrl;
@override@JsonKey(name: 'Director') final  String director;
 final  List<String> _images;
@override@JsonKey(name: 'Images') List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey(name: '_id') final  String? legacyId;
@override@JsonKey(name: 'Actors') final  String? actors;
@override@JsonKey(name: 'Awards') final  String? awards;
@override@JsonKey(name: 'Country') final  String? country;
@override@JsonKey(name: 'Genre') final  String? genre;
@override@JsonKey(name: 'Writer') final  String? writer;
@override@JsonKey(name: 'Language') final  String? language;
@override@JsonKey(name: 'Metascore') final  dynamic metascore;
@override@JsonKey(name: 'Rated') final  String? rated;
@override@JsonKey(name: 'Released') final  String? released;
@override@JsonKey(name: 'Runtime') final  String? runtime;
@override@JsonKey(name: 'Year') final  String? year;
@override@JsonKey(name: 'imdbID') final  String? imdbId;
@override@JsonKey(name: 'imdbRating') final  dynamic imdbRating;
@override@JsonKey(name: 'imdbVotes') final  dynamic imdbVotes;
@override@JsonKey(name: 'Type') final  String? type;
@override@JsonKey(name: 'ComingSoon') final  bool comingSoon;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieModelCopyWith<_MovieModel> get copyWith => __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.director, director) || other.director == director)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.legacyId, legacyId) || other.legacyId == legacyId)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.country, country) || other.country == country)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.metascore, metascore)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.year, year) || other.year == year)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&const DeepCollectionEquality().equals(other.imdbRating, imdbRating)&&const DeepCollectionEquality().equals(other.imdbVotes, imdbVotes)&&(identical(other.type, type) || other.type == type)&&(identical(other.comingSoon, comingSoon) || other.comingSoon == comingSoon)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,posterUrl,director,const DeepCollectionEquality().hash(_images),legacyId,actors,awards,country,genre,writer,language,const DeepCollectionEquality().hash(metascore),rated,released,runtime,year,imdbId,const DeepCollectionEquality().hash(imdbRating),const DeepCollectionEquality().hash(imdbVotes),type,comingSoon,isFavorite]);

@override
String toString() {
  return 'MovieModel(id: $id, title: $title, description: $description, posterUrl: $posterUrl, director: $director, images: $images, legacyId: $legacyId, actors: $actors, awards: $awards, country: $country, genre: $genre, writer: $writer, language: $language, metascore: $metascore, rated: $rated, released: $released, runtime: $runtime, year: $year, imdbId: $imdbId, imdbRating: $imdbRating, imdbVotes: $imdbVotes, type: $type, comingSoon: $comingSoon, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(_MovieModel value, $Res Function(_MovieModel) _then) = __$MovieModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Plot') String description,@JsonKey(name: 'Poster') String posterUrl,@JsonKey(name: 'Director') String director,@JsonKey(name: 'Images') List<String> images,@JsonKey(name: '_id') String? legacyId,@JsonKey(name: 'Actors') String? actors,@JsonKey(name: 'Awards') String? awards,@JsonKey(name: 'Country') String? country,@JsonKey(name: 'Genre') String? genre,@JsonKey(name: 'Writer') String? writer,@JsonKey(name: 'Language') String? language,@JsonKey(name: 'Metascore') dynamic metascore,@JsonKey(name: 'Rated') String? rated,@JsonKey(name: 'Released') String? released,@JsonKey(name: 'Runtime') String? runtime,@JsonKey(name: 'Year') String? year,@JsonKey(name: 'imdbID') String? imdbId,@JsonKey(name: 'imdbRating') dynamic imdbRating,@JsonKey(name: 'imdbVotes') dynamic imdbVotes,@JsonKey(name: 'Type') String? type,@JsonKey(name: 'ComingSoon') bool comingSoon, bool isFavorite
});




}
/// @nodoc
class __$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(this._self, this._then);

  final _MovieModel _self;
  final $Res Function(_MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? posterUrl = null,Object? director = null,Object? images = null,Object? legacyId = freezed,Object? actors = freezed,Object? awards = freezed,Object? country = freezed,Object? genre = freezed,Object? writer = freezed,Object? language = freezed,Object? metascore = freezed,Object? rated = freezed,Object? released = freezed,Object? runtime = freezed,Object? year = freezed,Object? imdbId = freezed,Object? imdbRating = freezed,Object? imdbVotes = freezed,Object? type = freezed,Object? comingSoon = null,Object? isFavorite = null,}) {
  return _then(_MovieModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,director: null == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,legacyId: freezed == legacyId ? _self.legacyId : legacyId // ignore: cast_nullable_to_non_nullable
as String?,actors: freezed == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String?,awards: freezed == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,genre: freezed == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String?,writer: freezed == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,metascore: freezed == metascore ? _self.metascore : metascore // ignore: cast_nullable_to_non_nullable
as dynamic,rated: freezed == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String?,released: freezed == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String?,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,imdbRating: freezed == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as dynamic,imdbVotes: freezed == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as dynamic,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,comingSoon: null == comingSoon ? _self.comingSoon : comingSoon // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
