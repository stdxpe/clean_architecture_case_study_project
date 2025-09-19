// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_photo_update_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PPUpdateStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PPUpdateStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PPUpdateStatus()';
}


}

/// @nodoc
class $PPUpdateStatusCopyWith<$Res>  {
$PPUpdateStatusCopyWith(PPUpdateStatus _, $Res Function(PPUpdateStatus) __);
}


/// Adds pattern-matching-related methods to [PPUpdateStatus].
extension PPUpdateStatusPatterns on PPUpdateStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SelectingPhoto value)?  selectingPhoto,TResult Function( UploadingPhoto value)?  uploadingPhoto,TResult Function( _SelectSuccess value)?  selectSuccess,TResult Function( _UploadSuccess value)?  uploadSuccess,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SelectingPhoto() when selectingPhoto != null:
return selectingPhoto(_that);case UploadingPhoto() when uploadingPhoto != null:
return uploadingPhoto(_that);case _SelectSuccess() when selectSuccess != null:
return selectSuccess(_that);case _UploadSuccess() when uploadSuccess != null:
return uploadSuccess(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SelectingPhoto value)  selectingPhoto,required TResult Function( UploadingPhoto value)  uploadingPhoto,required TResult Function( _SelectSuccess value)  selectSuccess,required TResult Function( _UploadSuccess value)  uploadSuccess,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SelectingPhoto():
return selectingPhoto(_that);case UploadingPhoto():
return uploadingPhoto(_that);case _SelectSuccess():
return selectSuccess(_that);case _UploadSuccess():
return uploadSuccess(_that);case _Failure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SelectingPhoto value)?  selectingPhoto,TResult? Function( UploadingPhoto value)?  uploadingPhoto,TResult? Function( _SelectSuccess value)?  selectSuccess,TResult? Function( _UploadSuccess value)?  uploadSuccess,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SelectingPhoto() when selectingPhoto != null:
return selectingPhoto(_that);case UploadingPhoto() when uploadingPhoto != null:
return uploadingPhoto(_that);case _SelectSuccess() when selectSuccess != null:
return selectSuccess(_that);case _UploadSuccess() when uploadSuccess != null:
return uploadSuccess(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  selectingPhoto,TResult Function()?  uploadingPhoto,TResult Function()?  selectSuccess,TResult Function()?  uploadSuccess,TResult Function( String? message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SelectingPhoto() when selectingPhoto != null:
return selectingPhoto();case UploadingPhoto() when uploadingPhoto != null:
return uploadingPhoto();case _SelectSuccess() when selectSuccess != null:
return selectSuccess();case _UploadSuccess() when uploadSuccess != null:
return uploadSuccess();case _Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  selectingPhoto,required TResult Function()  uploadingPhoto,required TResult Function()  selectSuccess,required TResult Function()  uploadSuccess,required TResult Function( String? message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SelectingPhoto():
return selectingPhoto();case UploadingPhoto():
return uploadingPhoto();case _SelectSuccess():
return selectSuccess();case _UploadSuccess():
return uploadSuccess();case _Failure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  selectingPhoto,TResult? Function()?  uploadingPhoto,TResult? Function()?  selectSuccess,TResult? Function()?  uploadSuccess,TResult? Function( String? message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SelectingPhoto() when selectingPhoto != null:
return selectingPhoto();case UploadingPhoto() when uploadingPhoto != null:
return uploadingPhoto();case _SelectSuccess() when selectSuccess != null:
return selectSuccess();case _UploadSuccess() when uploadSuccess != null:
return uploadSuccess();case _Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PPUpdateStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PPUpdateStatus.initial()';
}


}




/// @nodoc


class SelectingPhoto implements PPUpdateStatus {
  const SelectingPhoto();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectingPhoto);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PPUpdateStatus.selectingPhoto()';
}


}




/// @nodoc


class UploadingPhoto implements PPUpdateStatus {
  const UploadingPhoto();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadingPhoto);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PPUpdateStatus.uploadingPhoto()';
}


}




/// @nodoc


class _SelectSuccess implements PPUpdateStatus {
  const _SelectSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PPUpdateStatus.selectSuccess()';
}


}




/// @nodoc


class _UploadSuccess implements PPUpdateStatus {
  const _UploadSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PPUpdateStatus.uploadSuccess()';
}


}




/// @nodoc


class _Failure implements PPUpdateStatus {
  const _Failure(this.message);
  

 final  String? message;

/// Create a copy of PPUpdateStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PPUpdateStatus.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $PPUpdateStatusCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of PPUpdateStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_Failure(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
