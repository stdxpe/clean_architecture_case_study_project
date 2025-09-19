// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoviesResponseDto {

@JsonKey(name: 'response') ResponseInfoDto get info; List<MovieModel> get movies; PaginationDto get pagination;
/// Create a copy of MoviesResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoviesResponseDtoCopyWith<MoviesResponseDto> get copyWith => _$MoviesResponseDtoCopyWithImpl<MoviesResponseDto>(this as MoviesResponseDto, _$identity);

  /// Serializes this MoviesResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoviesResponseDto&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(movies),pagination);

@override
String toString() {
  return 'MoviesResponseDto(info: $info, movies: $movies, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $MoviesResponseDtoCopyWith<$Res>  {
  factory $MoviesResponseDtoCopyWith(MoviesResponseDto value, $Res Function(MoviesResponseDto) _then) = _$MoviesResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info, List<MovieModel> movies, PaginationDto pagination
});


$ResponseInfoDtoCopyWith<$Res> get info;$PaginationDtoCopyWith<$Res> get pagination;

}
/// @nodoc
class _$MoviesResponseDtoCopyWithImpl<$Res>
    implements $MoviesResponseDtoCopyWith<$Res> {
  _$MoviesResponseDtoCopyWithImpl(this._self, this._then);

  final MoviesResponseDto _self;
  final $Res Function(MoviesResponseDto) _then;

/// Create a copy of MoviesResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? movies = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationDto,
  ));
}
/// Create a copy of MoviesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of MoviesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDtoCopyWith<$Res> get pagination {
  
  return $PaginationDtoCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [MoviesResponseDto].
extension MoviesResponseDtoPatterns on MoviesResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoviesResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoviesResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoviesResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _MoviesResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoviesResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _MoviesResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info,  List<MovieModel> movies,  PaginationDto pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoviesResponseDto() when $default != null:
return $default(_that.info,_that.movies,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info,  List<MovieModel> movies,  PaginationDto pagination)  $default,) {final _that = this;
switch (_that) {
case _MoviesResponseDto():
return $default(_that.info,_that.movies,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  ResponseInfoDto info,  List<MovieModel> movies,  PaginationDto pagination)?  $default,) {final _that = this;
switch (_that) {
case _MoviesResponseDto() when $default != null:
return $default(_that.info,_that.movies,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoviesResponseDto extends MoviesResponseDto {
  const _MoviesResponseDto({@JsonKey(name: 'response') required this.info, required final  List<MovieModel> movies, required this.pagination}): _movies = movies,super._();
  factory _MoviesResponseDto.fromJson(Map<String, dynamic> json) => _$MoviesResponseDtoFromJson(json);

@override@JsonKey(name: 'response') final  ResponseInfoDto info;
 final  List<MovieModel> _movies;
@override List<MovieModel> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override final  PaginationDto pagination;

/// Create a copy of MoviesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoviesResponseDtoCopyWith<_MoviesResponseDto> get copyWith => __$MoviesResponseDtoCopyWithImpl<_MoviesResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoviesResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoviesResponseDto&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(_movies),pagination);

@override
String toString() {
  return 'MoviesResponseDto(info: $info, movies: $movies, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$MoviesResponseDtoCopyWith<$Res> implements $MoviesResponseDtoCopyWith<$Res> {
  factory _$MoviesResponseDtoCopyWith(_MoviesResponseDto value, $Res Function(_MoviesResponseDto) _then) = __$MoviesResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info, List<MovieModel> movies, PaginationDto pagination
});


@override $ResponseInfoDtoCopyWith<$Res> get info;@override $PaginationDtoCopyWith<$Res> get pagination;

}
/// @nodoc
class __$MoviesResponseDtoCopyWithImpl<$Res>
    implements _$MoviesResponseDtoCopyWith<$Res> {
  __$MoviesResponseDtoCopyWithImpl(this._self, this._then);

  final _MoviesResponseDto _self;
  final $Res Function(_MoviesResponseDto) _then;

/// Create a copy of MoviesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? movies = null,Object? pagination = null,}) {
  return _then(_MoviesResponseDto(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationDto,
  ));
}

/// Create a copy of MoviesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of MoviesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationDtoCopyWith<$Res> get pagination {
  
  return $PaginationDtoCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
