// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_photo_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfilePhotoUpdateState {

 PPUpdateStatus get status; MediaSource get mediaSource; File? get selectedPhoto; UISideEffect? get uiSideEffect;
/// Create a copy of ProfilePhotoUpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilePhotoUpdateStateCopyWith<ProfilePhotoUpdateState> get copyWith => _$ProfilePhotoUpdateStateCopyWithImpl<ProfilePhotoUpdateState>(this as ProfilePhotoUpdateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePhotoUpdateState&&(identical(other.status, status) || other.status == status)&&(identical(other.mediaSource, mediaSource) || other.mediaSource == mediaSource)&&(identical(other.selectedPhoto, selectedPhoto) || other.selectedPhoto == selectedPhoto)&&(identical(other.uiSideEffect, uiSideEffect) || other.uiSideEffect == uiSideEffect));
}


@override
int get hashCode => Object.hash(runtimeType,status,mediaSource,selectedPhoto,uiSideEffect);

@override
String toString() {
  return 'ProfilePhotoUpdateState(status: $status, mediaSource: $mediaSource, selectedPhoto: $selectedPhoto, uiSideEffect: $uiSideEffect)';
}


}

/// @nodoc
abstract mixin class $ProfilePhotoUpdateStateCopyWith<$Res>  {
  factory $ProfilePhotoUpdateStateCopyWith(ProfilePhotoUpdateState value, $Res Function(ProfilePhotoUpdateState) _then) = _$ProfilePhotoUpdateStateCopyWithImpl;
@useResult
$Res call({
 PPUpdateStatus status, MediaSource mediaSource, File? selectedPhoto, UISideEffect? uiSideEffect
});


$PPUpdateStatusCopyWith<$Res> get status;$UISideEffectCopyWith<$Res>? get uiSideEffect;

}
/// @nodoc
class _$ProfilePhotoUpdateStateCopyWithImpl<$Res>
    implements $ProfilePhotoUpdateStateCopyWith<$Res> {
  _$ProfilePhotoUpdateStateCopyWithImpl(this._self, this._then);

  final ProfilePhotoUpdateState _self;
  final $Res Function(ProfilePhotoUpdateState) _then;

/// Create a copy of ProfilePhotoUpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? mediaSource = null,Object? selectedPhoto = freezed,Object? uiSideEffect = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PPUpdateStatus,mediaSource: null == mediaSource ? _self.mediaSource : mediaSource // ignore: cast_nullable_to_non_nullable
as MediaSource,selectedPhoto: freezed == selectedPhoto ? _self.selectedPhoto : selectedPhoto // ignore: cast_nullable_to_non_nullable
as File?,uiSideEffect: freezed == uiSideEffect ? _self.uiSideEffect : uiSideEffect // ignore: cast_nullable_to_non_nullable
as UISideEffect?,
  ));
}
/// Create a copy of ProfilePhotoUpdateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PPUpdateStatusCopyWith<$Res> get status {
  
  return $PPUpdateStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ProfilePhotoUpdateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UISideEffectCopyWith<$Res>? get uiSideEffect {
    if (_self.uiSideEffect == null) {
    return null;
  }

  return $UISideEffectCopyWith<$Res>(_self.uiSideEffect!, (value) {
    return _then(_self.copyWith(uiSideEffect: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfilePhotoUpdateState].
extension ProfilePhotoUpdateStatePatterns on ProfilePhotoUpdateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfilePhotoUpdateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfilePhotoUpdateState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfilePhotoUpdateState value)  $default,){
final _that = this;
switch (_that) {
case _ProfilePhotoUpdateState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfilePhotoUpdateState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfilePhotoUpdateState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PPUpdateStatus status,  MediaSource mediaSource,  File? selectedPhoto,  UISideEffect? uiSideEffect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfilePhotoUpdateState() when $default != null:
return $default(_that.status,_that.mediaSource,_that.selectedPhoto,_that.uiSideEffect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PPUpdateStatus status,  MediaSource mediaSource,  File? selectedPhoto,  UISideEffect? uiSideEffect)  $default,) {final _that = this;
switch (_that) {
case _ProfilePhotoUpdateState():
return $default(_that.status,_that.mediaSource,_that.selectedPhoto,_that.uiSideEffect);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PPUpdateStatus status,  MediaSource mediaSource,  File? selectedPhoto,  UISideEffect? uiSideEffect)?  $default,) {final _that = this;
switch (_that) {
case _ProfilePhotoUpdateState() when $default != null:
return $default(_that.status,_that.mediaSource,_that.selectedPhoto,_that.uiSideEffect);case _:
  return null;

}
}

}

/// @nodoc


class _ProfilePhotoUpdateState implements ProfilePhotoUpdateState {
  const _ProfilePhotoUpdateState({required this.status, required this.mediaSource, required this.selectedPhoto, this.uiSideEffect});
  

@override final  PPUpdateStatus status;
@override final  MediaSource mediaSource;
@override final  File? selectedPhoto;
@override final  UISideEffect? uiSideEffect;

/// Create a copy of ProfilePhotoUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfilePhotoUpdateStateCopyWith<_ProfilePhotoUpdateState> get copyWith => __$ProfilePhotoUpdateStateCopyWithImpl<_ProfilePhotoUpdateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfilePhotoUpdateState&&(identical(other.status, status) || other.status == status)&&(identical(other.mediaSource, mediaSource) || other.mediaSource == mediaSource)&&(identical(other.selectedPhoto, selectedPhoto) || other.selectedPhoto == selectedPhoto)&&(identical(other.uiSideEffect, uiSideEffect) || other.uiSideEffect == uiSideEffect));
}


@override
int get hashCode => Object.hash(runtimeType,status,mediaSource,selectedPhoto,uiSideEffect);

@override
String toString() {
  return 'ProfilePhotoUpdateState(status: $status, mediaSource: $mediaSource, selectedPhoto: $selectedPhoto, uiSideEffect: $uiSideEffect)';
}


}

/// @nodoc
abstract mixin class _$ProfilePhotoUpdateStateCopyWith<$Res> implements $ProfilePhotoUpdateStateCopyWith<$Res> {
  factory _$ProfilePhotoUpdateStateCopyWith(_ProfilePhotoUpdateState value, $Res Function(_ProfilePhotoUpdateState) _then) = __$ProfilePhotoUpdateStateCopyWithImpl;
@override @useResult
$Res call({
 PPUpdateStatus status, MediaSource mediaSource, File? selectedPhoto, UISideEffect? uiSideEffect
});


@override $PPUpdateStatusCopyWith<$Res> get status;@override $UISideEffectCopyWith<$Res>? get uiSideEffect;

}
/// @nodoc
class __$ProfilePhotoUpdateStateCopyWithImpl<$Res>
    implements _$ProfilePhotoUpdateStateCopyWith<$Res> {
  __$ProfilePhotoUpdateStateCopyWithImpl(this._self, this._then);

  final _ProfilePhotoUpdateState _self;
  final $Res Function(_ProfilePhotoUpdateState) _then;

/// Create a copy of ProfilePhotoUpdateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? mediaSource = null,Object? selectedPhoto = freezed,Object? uiSideEffect = freezed,}) {
  return _then(_ProfilePhotoUpdateState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PPUpdateStatus,mediaSource: null == mediaSource ? _self.mediaSource : mediaSource // ignore: cast_nullable_to_non_nullable
as MediaSource,selectedPhoto: freezed == selectedPhoto ? _self.selectedPhoto : selectedPhoto // ignore: cast_nullable_to_non_nullable
as File?,uiSideEffect: freezed == uiSideEffect ? _self.uiSideEffect : uiSideEffect // ignore: cast_nullable_to_non_nullable
as UISideEffect?,
  ));
}

/// Create a copy of ProfilePhotoUpdateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PPUpdateStatusCopyWith<$Res> get status {
  
  return $PPUpdateStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ProfilePhotoUpdateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UISideEffectCopyWith<$Res>? get uiSideEffect {
    if (_self.uiSideEffect == null) {
    return null;
  }

  return $UISideEffectCopyWith<$Res>(_self.uiSideEffect!, (value) {
    return _then(_self.copyWith(uiSideEffect: value));
  });
}
}

// dart format on
