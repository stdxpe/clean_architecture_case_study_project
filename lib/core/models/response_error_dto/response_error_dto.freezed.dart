// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseErrorDto {

@JsonKey(name: 'response') ResponseInfoDto get info;@JsonKey(name: 'data') dynamic get data;
/// Create a copy of ResponseErrorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseErrorDtoCopyWith<ResponseErrorDto> get copyWith => _$ResponseErrorDtoCopyWithImpl<ResponseErrorDto>(this as ResponseErrorDto, _$identity);

  /// Serializes this ResponseErrorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseErrorDto&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ResponseErrorDto(info: $info, data: $data)';
}


}

/// @nodoc
abstract mixin class $ResponseErrorDtoCopyWith<$Res>  {
  factory $ResponseErrorDtoCopyWith(ResponseErrorDto value, $Res Function(ResponseErrorDto) _then) = _$ResponseErrorDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info,@JsonKey(name: 'data') dynamic data
});


$ResponseInfoDtoCopyWith<$Res> get info;

}
/// @nodoc
class _$ResponseErrorDtoCopyWithImpl<$Res>
    implements $ResponseErrorDtoCopyWith<$Res> {
  _$ResponseErrorDtoCopyWithImpl(this._self, this._then);

  final ResponseErrorDto _self;
  final $Res Function(ResponseErrorDto) _then;

/// Create a copy of ResponseErrorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of ResponseErrorDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResponseErrorDto].
extension ResponseErrorDtoPatterns on ResponseErrorDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseErrorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseErrorDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseErrorDto value)  $default,){
final _that = this;
switch (_that) {
case _ResponseErrorDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseErrorDto value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseErrorDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info, @JsonKey(name: 'data')  dynamic data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseErrorDto() when $default != null:
return $default(_that.info,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info, @JsonKey(name: 'data')  dynamic data)  $default,) {final _that = this;
switch (_that) {
case _ResponseErrorDto():
return $default(_that.info,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  ResponseInfoDto info, @JsonKey(name: 'data')  dynamic data)?  $default,) {final _that = this;
switch (_that) {
case _ResponseErrorDto() when $default != null:
return $default(_that.info,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseErrorDto extends ResponseErrorDto {
  const _ResponseErrorDto({@JsonKey(name: 'response') required this.info, @JsonKey(name: 'data') this.data}): super._();
  factory _ResponseErrorDto.fromJson(Map<String, dynamic> json) => _$ResponseErrorDtoFromJson(json);

@override@JsonKey(name: 'response') final  ResponseInfoDto info;
@override@JsonKey(name: 'data') final  dynamic data;

/// Create a copy of ResponseErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseErrorDtoCopyWith<_ResponseErrorDto> get copyWith => __$ResponseErrorDtoCopyWithImpl<_ResponseErrorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseErrorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseErrorDto&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ResponseErrorDto(info: $info, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ResponseErrorDtoCopyWith<$Res> implements $ResponseErrorDtoCopyWith<$Res> {
  factory _$ResponseErrorDtoCopyWith(_ResponseErrorDto value, $Res Function(_ResponseErrorDto) _then) = __$ResponseErrorDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info,@JsonKey(name: 'data') dynamic data
});


@override $ResponseInfoDtoCopyWith<$Res> get info;

}
/// @nodoc
class __$ResponseErrorDtoCopyWithImpl<$Res>
    implements _$ResponseErrorDtoCopyWith<$Res> {
  __$ResponseErrorDtoCopyWithImpl(this._self, this._then);

  final _ResponseErrorDto _self;
  final $Res Function(_ResponseErrorDto) _then;

/// Create a copy of ResponseErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? data = freezed,}) {
  return _then(_ResponseErrorDto(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of ResponseErrorDto
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
