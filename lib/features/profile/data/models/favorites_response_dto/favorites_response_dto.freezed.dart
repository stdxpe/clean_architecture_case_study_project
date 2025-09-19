// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoritesResponseDto {

@JsonKey(name: 'response') ResponseInfoDto get info; List<MovieModel> get movies;
/// Create a copy of FavoritesResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesResponseDtoCopyWith<FavoritesResponseDto> get copyWith => _$FavoritesResponseDtoCopyWithImpl<FavoritesResponseDto>(this as FavoritesResponseDto, _$identity);

  /// Serializes this FavoritesResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesResponseDto&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.movies, movies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(movies));

@override
String toString() {
  return 'FavoritesResponseDto(info: $info, movies: $movies)';
}


}

/// @nodoc
abstract mixin class $FavoritesResponseDtoCopyWith<$Res>  {
  factory $FavoritesResponseDtoCopyWith(FavoritesResponseDto value, $Res Function(FavoritesResponseDto) _then) = _$FavoritesResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info, List<MovieModel> movies
});


$ResponseInfoDtoCopyWith<$Res> get info;

}
/// @nodoc
class _$FavoritesResponseDtoCopyWithImpl<$Res>
    implements $FavoritesResponseDtoCopyWith<$Res> {
  _$FavoritesResponseDtoCopyWithImpl(this._self, this._then);

  final FavoritesResponseDto _self;
  final $Res Function(FavoritesResponseDto) _then;

/// Create a copy of FavoritesResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? movies = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieModel>,
  ));
}
/// Create a copy of FavoritesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoritesResponseDto].
extension FavoritesResponseDtoPatterns on FavoritesResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoritesResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritesResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoritesResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _FavoritesResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoritesResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _FavoritesResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info,  List<MovieModel> movies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoritesResponseDto() when $default != null:
return $default(_that.info,_that.movies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info,  List<MovieModel> movies)  $default,) {final _that = this;
switch (_that) {
case _FavoritesResponseDto():
return $default(_that.info,_that.movies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  ResponseInfoDto info,  List<MovieModel> movies)?  $default,) {final _that = this;
switch (_that) {
case _FavoritesResponseDto() when $default != null:
return $default(_that.info,_that.movies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoritesResponseDto extends FavoritesResponseDto {
  const _FavoritesResponseDto({@JsonKey(name: 'response') required this.info, required final  List<MovieModel> movies}): _movies = movies,super._();
  factory _FavoritesResponseDto.fromJson(Map<String, dynamic> json) => _$FavoritesResponseDtoFromJson(json);

@override@JsonKey(name: 'response') final  ResponseInfoDto info;
 final  List<MovieModel> _movies;
@override List<MovieModel> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}


/// Create a copy of FavoritesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesResponseDtoCopyWith<_FavoritesResponseDto> get copyWith => __$FavoritesResponseDtoCopyWithImpl<_FavoritesResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoritesResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesResponseDto&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other._movies, _movies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(_movies));

@override
String toString() {
  return 'FavoritesResponseDto(info: $info, movies: $movies)';
}


}

/// @nodoc
abstract mixin class _$FavoritesResponseDtoCopyWith<$Res> implements $FavoritesResponseDtoCopyWith<$Res> {
  factory _$FavoritesResponseDtoCopyWith(_FavoritesResponseDto value, $Res Function(_FavoritesResponseDto) _then) = __$FavoritesResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info, List<MovieModel> movies
});


@override $ResponseInfoDtoCopyWith<$Res> get info;

}
/// @nodoc
class __$FavoritesResponseDtoCopyWithImpl<$Res>
    implements _$FavoritesResponseDtoCopyWith<$Res> {
  __$FavoritesResponseDtoCopyWithImpl(this._self, this._then);

  final _FavoritesResponseDto _self;
  final $Res Function(_FavoritesResponseDto) _then;

/// Create a copy of FavoritesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? movies = null,}) {
  return _then(_FavoritesResponseDto(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieModel>,
  ));
}

/// Create a copy of FavoritesResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

// dart format on
