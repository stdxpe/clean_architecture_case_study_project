// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toggle_favorite_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToggleFavoriteResponseDto {

@JsonKey(name: 'response') ResponseInfoDto get info; MovieModel get movie; String get action;
/// Create a copy of ToggleFavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFavoriteResponseDtoCopyWith<ToggleFavoriteResponseDto> get copyWith => _$ToggleFavoriteResponseDtoCopyWithImpl<ToggleFavoriteResponseDto>(this as ToggleFavoriteResponseDto, _$identity);

  /// Serializes this ToggleFavoriteResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFavoriteResponseDto&&(identical(other.info, info) || other.info == info)&&(identical(other.movie, movie) || other.movie == movie)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,movie,action);

@override
String toString() {
  return 'ToggleFavoriteResponseDto(info: $info, movie: $movie, action: $action)';
}


}

/// @nodoc
abstract mixin class $ToggleFavoriteResponseDtoCopyWith<$Res>  {
  factory $ToggleFavoriteResponseDtoCopyWith(ToggleFavoriteResponseDto value, $Res Function(ToggleFavoriteResponseDto) _then) = _$ToggleFavoriteResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info, MovieModel movie, String action
});


$ResponseInfoDtoCopyWith<$Res> get info;$MovieModelCopyWith<$Res> get movie;

}
/// @nodoc
class _$ToggleFavoriteResponseDtoCopyWithImpl<$Res>
    implements $ToggleFavoriteResponseDtoCopyWith<$Res> {
  _$ToggleFavoriteResponseDtoCopyWithImpl(this._self, this._then);

  final ToggleFavoriteResponseDto _self;
  final $Res Function(ToggleFavoriteResponseDto) _then;

/// Create a copy of ToggleFavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? movie = null,Object? action = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,movie: null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as MovieModel,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ToggleFavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of ToggleFavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieModelCopyWith<$Res> get movie {
  
  return $MovieModelCopyWith<$Res>(_self.movie, (value) {
    return _then(_self.copyWith(movie: value));
  });
}
}


/// Adds pattern-matching-related methods to [ToggleFavoriteResponseDto].
extension ToggleFavoriteResponseDtoPatterns on ToggleFavoriteResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToggleFavoriteResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToggleFavoriteResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToggleFavoriteResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ToggleFavoriteResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToggleFavoriteResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ToggleFavoriteResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info,  MovieModel movie,  String action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToggleFavoriteResponseDto() when $default != null:
return $default(_that.info,_that.movie,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info,  MovieModel movie,  String action)  $default,) {final _that = this;
switch (_that) {
case _ToggleFavoriteResponseDto():
return $default(_that.info,_that.movie,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  ResponseInfoDto info,  MovieModel movie,  String action)?  $default,) {final _that = this;
switch (_that) {
case _ToggleFavoriteResponseDto() when $default != null:
return $default(_that.info,_that.movie,_that.action);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToggleFavoriteResponseDto extends ToggleFavoriteResponseDto {
  const _ToggleFavoriteResponseDto({@JsonKey(name: 'response') required this.info, required this.movie, required this.action}): super._();
  factory _ToggleFavoriteResponseDto.fromJson(Map<String, dynamic> json) => _$ToggleFavoriteResponseDtoFromJson(json);

@override@JsonKey(name: 'response') final  ResponseInfoDto info;
@override final  MovieModel movie;
@override final  String action;

/// Create a copy of ToggleFavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleFavoriteResponseDtoCopyWith<_ToggleFavoriteResponseDto> get copyWith => __$ToggleFavoriteResponseDtoCopyWithImpl<_ToggleFavoriteResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToggleFavoriteResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFavoriteResponseDto&&(identical(other.info, info) || other.info == info)&&(identical(other.movie, movie) || other.movie == movie)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,movie,action);

@override
String toString() {
  return 'ToggleFavoriteResponseDto(info: $info, movie: $movie, action: $action)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavoriteResponseDtoCopyWith<$Res> implements $ToggleFavoriteResponseDtoCopyWith<$Res> {
  factory _$ToggleFavoriteResponseDtoCopyWith(_ToggleFavoriteResponseDto value, $Res Function(_ToggleFavoriteResponseDto) _then) = __$ToggleFavoriteResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info, MovieModel movie, String action
});


@override $ResponseInfoDtoCopyWith<$Res> get info;@override $MovieModelCopyWith<$Res> get movie;

}
/// @nodoc
class __$ToggleFavoriteResponseDtoCopyWithImpl<$Res>
    implements _$ToggleFavoriteResponseDtoCopyWith<$Res> {
  __$ToggleFavoriteResponseDtoCopyWithImpl(this._self, this._then);

  final _ToggleFavoriteResponseDto _self;
  final $Res Function(_ToggleFavoriteResponseDto) _then;

/// Create a copy of ToggleFavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? movie = null,Object? action = null,}) {
  return _then(_ToggleFavoriteResponseDto(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,movie: null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as MovieModel,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ToggleFavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of ToggleFavoriteResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieModelCopyWith<$Res> get movie {
  
  return $MovieModelCopyWith<$Res>(_self.movie, (value) {
    return _then(_self.copyWith(movie: value));
  });
}
}

// dart format on
