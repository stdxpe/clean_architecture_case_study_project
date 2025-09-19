// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_photo_update_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfilePhotoUpdateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePhotoUpdateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilePhotoUpdateEvent()';
}


}

/// @nodoc
class $ProfilePhotoUpdateEventCopyWith<$Res>  {
$ProfilePhotoUpdateEventCopyWith(ProfilePhotoUpdateEvent _, $Res Function(ProfilePhotoUpdateEvent) __);
}


/// Adds pattern-matching-related methods to [ProfilePhotoUpdateEvent].
extension ProfilePhotoUpdateEventPatterns on ProfilePhotoUpdateEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfilePhotoSelectEvent value)?  selectPhoto,TResult Function( ProfilePhotoUploadEvent value)?  uploadPhoto,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfilePhotoSelectEvent() when selectPhoto != null:
return selectPhoto(_that);case ProfilePhotoUploadEvent() when uploadPhoto != null:
return uploadPhoto(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfilePhotoSelectEvent value)  selectPhoto,required TResult Function( ProfilePhotoUploadEvent value)  uploadPhoto,}){
final _that = this;
switch (_that) {
case ProfilePhotoSelectEvent():
return selectPhoto(_that);case ProfilePhotoUploadEvent():
return uploadPhoto(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfilePhotoSelectEvent value)?  selectPhoto,TResult? Function( ProfilePhotoUploadEvent value)?  uploadPhoto,}){
final _that = this;
switch (_that) {
case ProfilePhotoSelectEvent() when selectPhoto != null:
return selectPhoto(_that);case ProfilePhotoUploadEvent() when uploadPhoto != null:
return uploadPhoto(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  selectPhoto,TResult Function()?  uploadPhoto,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfilePhotoSelectEvent() when selectPhoto != null:
return selectPhoto();case ProfilePhotoUploadEvent() when uploadPhoto != null:
return uploadPhoto();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  selectPhoto,required TResult Function()  uploadPhoto,}) {final _that = this;
switch (_that) {
case ProfilePhotoSelectEvent():
return selectPhoto();case ProfilePhotoUploadEvent():
return uploadPhoto();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  selectPhoto,TResult? Function()?  uploadPhoto,}) {final _that = this;
switch (_that) {
case ProfilePhotoSelectEvent() when selectPhoto != null:
return selectPhoto();case ProfilePhotoUploadEvent() when uploadPhoto != null:
return uploadPhoto();case _:
  return null;

}
}

}

/// @nodoc


class ProfilePhotoSelectEvent implements ProfilePhotoUpdateEvent {
  const ProfilePhotoSelectEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePhotoSelectEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilePhotoUpdateEvent.selectPhoto()';
}


}




/// @nodoc


class ProfilePhotoUploadEvent implements ProfilePhotoUpdateEvent {
  const ProfilePhotoUploadEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePhotoUploadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilePhotoUpdateEvent.uploadPhoto()';
}


}




// dart format on
