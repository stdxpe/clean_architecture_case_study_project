// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileResponseDto {

@JsonKey(name: 'response') ResponseInfoDto get info;@JsonKey(name: 'data') ProfileModel get profile;
/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseDtoCopyWith<ProfileResponseDto> get copyWith => _$ProfileResponseDtoCopyWithImpl<ProfileResponseDto>(this as ProfileResponseDto, _$identity);

  /// Serializes this ProfileResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponseDto&&(identical(other.info, info) || other.info == info)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,profile);

@override
String toString() {
  return 'ProfileResponseDto(info: $info, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $ProfileResponseDtoCopyWith<$Res>  {
  factory $ProfileResponseDtoCopyWith(ProfileResponseDto value, $Res Function(ProfileResponseDto) _then) = _$ProfileResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info,@JsonKey(name: 'data') ProfileModel profile
});


$ResponseInfoDtoCopyWith<$Res> get info;$ProfileModelCopyWith<$Res> get profile;

}
/// @nodoc
class _$ProfileResponseDtoCopyWithImpl<$Res>
    implements $ProfileResponseDtoCopyWith<$Res> {
  _$ProfileResponseDtoCopyWithImpl(this._self, this._then);

  final ProfileResponseDto _self;
  final $Res Function(ProfileResponseDto) _then;

/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? profile = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileModel,
  ));
}
/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res> get profile {
  
  return $ProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileResponseDto].
extension ProfileResponseDtoPatterns on ProfileResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info, @JsonKey(name: 'data')  ProfileModel profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponseDto() when $default != null:
return $default(_that.info,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response')  ResponseInfoDto info, @JsonKey(name: 'data')  ProfileModel profile)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseDto():
return $default(_that.info,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response')  ResponseInfoDto info, @JsonKey(name: 'data')  ProfileModel profile)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseDto() when $default != null:
return $default(_that.info,_that.profile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponseDto extends ProfileResponseDto {
  const _ProfileResponseDto({@JsonKey(name: 'response') required this.info, @JsonKey(name: 'data') required this.profile}): super._();
  factory _ProfileResponseDto.fromJson(Map<String, dynamic> json) => _$ProfileResponseDtoFromJson(json);

@override@JsonKey(name: 'response') final  ResponseInfoDto info;
@override@JsonKey(name: 'data') final  ProfileModel profile;

/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseDtoCopyWith<_ProfileResponseDto> get copyWith => __$ProfileResponseDtoCopyWithImpl<_ProfileResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponseDto&&(identical(other.info, info) || other.info == info)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,profile);

@override
String toString() {
  return 'ProfileResponseDto(info: $info, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseDtoCopyWith<$Res> implements $ProfileResponseDtoCopyWith<$Res> {
  factory _$ProfileResponseDtoCopyWith(_ProfileResponseDto value, $Res Function(_ProfileResponseDto) _then) = __$ProfileResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response') ResponseInfoDto info,@JsonKey(name: 'data') ProfileModel profile
});


@override $ResponseInfoDtoCopyWith<$Res> get info;@override $ProfileModelCopyWith<$Res> get profile;

}
/// @nodoc
class __$ProfileResponseDtoCopyWithImpl<$Res>
    implements _$ProfileResponseDtoCopyWith<$Res> {
  __$ProfileResponseDtoCopyWithImpl(this._self, this._then);

  final _ProfileResponseDto _self;
  final $Res Function(_ProfileResponseDto) _then;

/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? profile = null,}) {
  return _then(_ProfileResponseDto(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as ResponseInfoDto,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileModel,
  ));
}

/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResponseInfoDtoCopyWith<$Res> get info {
  
  return $ResponseInfoDtoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of ProfileResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res> get profile {
  
  return $ProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
