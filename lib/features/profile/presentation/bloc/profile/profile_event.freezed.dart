// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetUserProfile value)?  getUserProfile,TResult Function( CrashlyticsRequested value)?  crashlyticsRequested,TResult Function( ProfileSignOutRequested value)?  signOutRequested,TResult Function( NotificationRequested value)?  notificationRequested,TResult Function( InitialPreferencesRequested value)?  initialPreferencesRequested,TResult Function( PreferencesChanged value)?  preferencesChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetUserProfile() when getUserProfile != null:
return getUserProfile(_that);case CrashlyticsRequested() when crashlyticsRequested != null:
return crashlyticsRequested(_that);case ProfileSignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case NotificationRequested() when notificationRequested != null:
return notificationRequested(_that);case InitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested(_that);case PreferencesChanged() when preferencesChanged != null:
return preferencesChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetUserProfile value)  getUserProfile,required TResult Function( CrashlyticsRequested value)  crashlyticsRequested,required TResult Function( ProfileSignOutRequested value)  signOutRequested,required TResult Function( NotificationRequested value)  notificationRequested,required TResult Function( InitialPreferencesRequested value)  initialPreferencesRequested,required TResult Function( PreferencesChanged value)  preferencesChanged,}){
final _that = this;
switch (_that) {
case GetUserProfile():
return getUserProfile(_that);case CrashlyticsRequested():
return crashlyticsRequested(_that);case ProfileSignOutRequested():
return signOutRequested(_that);case NotificationRequested():
return notificationRequested(_that);case InitialPreferencesRequested():
return initialPreferencesRequested(_that);case PreferencesChanged():
return preferencesChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetUserProfile value)?  getUserProfile,TResult? Function( CrashlyticsRequested value)?  crashlyticsRequested,TResult? Function( ProfileSignOutRequested value)?  signOutRequested,TResult? Function( NotificationRequested value)?  notificationRequested,TResult? Function( InitialPreferencesRequested value)?  initialPreferencesRequested,TResult? Function( PreferencesChanged value)?  preferencesChanged,}){
final _that = this;
switch (_that) {
case GetUserProfile() when getUserProfile != null:
return getUserProfile(_that);case CrashlyticsRequested() when crashlyticsRequested != null:
return crashlyticsRequested(_that);case ProfileSignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case NotificationRequested() when notificationRequested != null:
return notificationRequested(_that);case InitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested(_that);case PreferencesChanged() when preferencesChanged != null:
return preferencesChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getUserProfile,TResult Function()?  crashlyticsRequested,TResult Function()?  signOutRequested,TResult Function( bool value)?  notificationRequested,TResult Function()?  initialPreferencesRequested,TResult Function( AppLocale? locale,  ThemeMode? themeMode,  bool? notifications,  bool? rememberMe)?  preferencesChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetUserProfile() when getUserProfile != null:
return getUserProfile();case CrashlyticsRequested() when crashlyticsRequested != null:
return crashlyticsRequested();case ProfileSignOutRequested() when signOutRequested != null:
return signOutRequested();case NotificationRequested() when notificationRequested != null:
return notificationRequested(_that.value);case InitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested();case PreferencesChanged() when preferencesChanged != null:
return preferencesChanged(_that.locale,_that.themeMode,_that.notifications,_that.rememberMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getUserProfile,required TResult Function()  crashlyticsRequested,required TResult Function()  signOutRequested,required TResult Function( bool value)  notificationRequested,required TResult Function()  initialPreferencesRequested,required TResult Function( AppLocale? locale,  ThemeMode? themeMode,  bool? notifications,  bool? rememberMe)  preferencesChanged,}) {final _that = this;
switch (_that) {
case GetUserProfile():
return getUserProfile();case CrashlyticsRequested():
return crashlyticsRequested();case ProfileSignOutRequested():
return signOutRequested();case NotificationRequested():
return notificationRequested(_that.value);case InitialPreferencesRequested():
return initialPreferencesRequested();case PreferencesChanged():
return preferencesChanged(_that.locale,_that.themeMode,_that.notifications,_that.rememberMe);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getUserProfile,TResult? Function()?  crashlyticsRequested,TResult? Function()?  signOutRequested,TResult? Function( bool value)?  notificationRequested,TResult? Function()?  initialPreferencesRequested,TResult? Function( AppLocale? locale,  ThemeMode? themeMode,  bool? notifications,  bool? rememberMe)?  preferencesChanged,}) {final _that = this;
switch (_that) {
case GetUserProfile() when getUserProfile != null:
return getUserProfile();case CrashlyticsRequested() when crashlyticsRequested != null:
return crashlyticsRequested();case ProfileSignOutRequested() when signOutRequested != null:
return signOutRequested();case NotificationRequested() when notificationRequested != null:
return notificationRequested(_that.value);case InitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested();case PreferencesChanged() when preferencesChanged != null:
return preferencesChanged(_that.locale,_that.themeMode,_that.notifications,_that.rememberMe);case _:
  return null;

}
}

}

/// @nodoc


class GetUserProfile implements ProfileEvent {
  const GetUserProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.getUserProfile()';
}


}




/// @nodoc


class CrashlyticsRequested implements ProfileEvent {
  const CrashlyticsRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrashlyticsRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.crashlyticsRequested()';
}


}




/// @nodoc


class ProfileSignOutRequested implements ProfileEvent {
  const ProfileSignOutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSignOutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.signOutRequested()';
}


}




/// @nodoc


class NotificationRequested implements ProfileEvent {
  const NotificationRequested(this.value);
  

 final  bool value;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationRequestedCopyWith<NotificationRequested> get copyWith => _$NotificationRequestedCopyWithImpl<NotificationRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationRequested&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ProfileEvent.notificationRequested(value: $value)';
}


}

/// @nodoc
abstract mixin class $NotificationRequestedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $NotificationRequestedCopyWith(NotificationRequested value, $Res Function(NotificationRequested) _then) = _$NotificationRequestedCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$NotificationRequestedCopyWithImpl<$Res>
    implements $NotificationRequestedCopyWith<$Res> {
  _$NotificationRequestedCopyWithImpl(this._self, this._then);

  final NotificationRequested _self;
  final $Res Function(NotificationRequested) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(NotificationRequested(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class InitialPreferencesRequested implements ProfileEvent {
  const InitialPreferencesRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialPreferencesRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.initialPreferencesRequested()';
}


}




/// @nodoc


class PreferencesChanged implements ProfileEvent {
  const PreferencesChanged({this.locale, this.themeMode, this.notifications, this.rememberMe});
  

 final  AppLocale? locale;
 final  ThemeMode? themeMode;
 final  bool? notifications;
 final  bool? rememberMe;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreferencesChangedCopyWith<PreferencesChanged> get copyWith => _$PreferencesChangedCopyWithImpl<PreferencesChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreferencesChanged&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.notifications, notifications) || other.notifications == notifications)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}


@override
int get hashCode => Object.hash(runtimeType,locale,themeMode,notifications,rememberMe);

@override
String toString() {
  return 'ProfileEvent.preferencesChanged(locale: $locale, themeMode: $themeMode, notifications: $notifications, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class $PreferencesChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $PreferencesChangedCopyWith(PreferencesChanged value, $Res Function(PreferencesChanged) _then) = _$PreferencesChangedCopyWithImpl;
@useResult
$Res call({
 AppLocale? locale, ThemeMode? themeMode, bool? notifications, bool? rememberMe
});




}
/// @nodoc
class _$PreferencesChangedCopyWithImpl<$Res>
    implements $PreferencesChangedCopyWith<$Res> {
  _$PreferencesChangedCopyWithImpl(this._self, this._then);

  final PreferencesChanged _self;
  final $Res Function(PreferencesChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = freezed,Object? themeMode = freezed,Object? notifications = freezed,Object? rememberMe = freezed,}) {
  return _then(PreferencesChanged(
locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocale?,themeMode: freezed == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode?,notifications: freezed == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as bool?,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
