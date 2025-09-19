// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseInfoDto {

 int? get code; String? get message;
/// Create a copy of ResponseInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<ResponseInfoDto> get copyWith => _$ResponseInfoDtoCopyWithImpl<ResponseInfoDto>(this as ResponseInfoDto, _$identity);

  /// Serializes this ResponseInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseInfoDto&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'ResponseInfoDto(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $ResponseInfoDtoCopyWith<$Res>  {
  factory $ResponseInfoDtoCopyWith(ResponseInfoDto value, $Res Function(ResponseInfoDto) _then) = _$ResponseInfoDtoCopyWithImpl;
@useResult
$Res call({
 int? code, String? message
});




}
/// @nodoc
class _$ResponseInfoDtoCopyWithImpl<$Res>
    implements $ResponseInfoDtoCopyWith<$Res> {
  _$ResponseInfoDtoCopyWithImpl(this._self, this._then);

  final ResponseInfoDto _self;
  final $Res Function(ResponseInfoDto) _then;

/// Create a copy of ResponseInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseInfoDto].
extension ResponseInfoDtoPatterns on ResponseInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _ResponseInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? code,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseInfoDto() when $default != null:
return $default(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? code,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ResponseInfoDto():
return $default(_that.code,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? code,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ResponseInfoDto() when $default != null:
return $default(_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseInfoDto implements ResponseInfoDto {
  const _ResponseInfoDto({this.code, this.message});
  factory _ResponseInfoDto.fromJson(Map<String, dynamic> json) => _$ResponseInfoDtoFromJson(json);

@override final  int? code;
@override final  String? message;

/// Create a copy of ResponseInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseInfoDtoCopyWith<_ResponseInfoDto> get copyWith => __$ResponseInfoDtoCopyWithImpl<_ResponseInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseInfoDto&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message);

@override
String toString() {
  return 'ResponseInfoDto(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ResponseInfoDtoCopyWith<$Res> implements $ResponseInfoDtoCopyWith<$Res> {
  factory _$ResponseInfoDtoCopyWith(_ResponseInfoDto value, $Res Function(_ResponseInfoDto) _then) = __$ResponseInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 int? code, String? message
});




}
/// @nodoc
class __$ResponseInfoDtoCopyWithImpl<$Res>
    implements _$ResponseInfoDtoCopyWith<$Res> {
  __$ResponseInfoDtoCopyWithImpl(this._self, this._then);

  final _ResponseInfoDto _self;
  final $Res Function(_ResponseInfoDto) _then;

/// Create a copy of ResponseInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? message = freezed,}) {
  return _then(_ResponseInfoDto(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
