// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SystemEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemEvent()';
}


}

/// @nodoc
class $SystemEventCopyWith<$Res>  {
$SystemEventCopyWith(SystemEvent _, $Res Function(SystemEvent) __);
}


/// Adds pattern-matching-related methods to [SystemEvent].
extension SystemEventPatterns on SystemEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SystemSignOutRequested value)?  signOutRequested,TResult Function( SystemAuthStatusChanged value)?  authStatusChanged,TResult Function( SystemProfilePhotoChanged value)?  profilePhotoChanged,TResult Function( SystemMovieFavoriteStatusChanged value)?  movieFavoriteStatusChanged,TResult Function( SystemInitialPreferencesRequested value)?  initialPreferencesRequested,TResult Function( SystemInitialPreferencesFetched value)?  initialPreferencesFetched,TResult Function( SystemPreferencesChanged value)?  preferencesChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SystemSignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case SystemAuthStatusChanged() when authStatusChanged != null:
return authStatusChanged(_that);case SystemProfilePhotoChanged() when profilePhotoChanged != null:
return profilePhotoChanged(_that);case SystemMovieFavoriteStatusChanged() when movieFavoriteStatusChanged != null:
return movieFavoriteStatusChanged(_that);case SystemInitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested(_that);case SystemInitialPreferencesFetched() when initialPreferencesFetched != null:
return initialPreferencesFetched(_that);case SystemPreferencesChanged() when preferencesChanged != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SystemSignOutRequested value)  signOutRequested,required TResult Function( SystemAuthStatusChanged value)  authStatusChanged,required TResult Function( SystemProfilePhotoChanged value)  profilePhotoChanged,required TResult Function( SystemMovieFavoriteStatusChanged value)  movieFavoriteStatusChanged,required TResult Function( SystemInitialPreferencesRequested value)  initialPreferencesRequested,required TResult Function( SystemInitialPreferencesFetched value)  initialPreferencesFetched,required TResult Function( SystemPreferencesChanged value)  preferencesChanged,}){
final _that = this;
switch (_that) {
case SystemSignOutRequested():
return signOutRequested(_that);case SystemAuthStatusChanged():
return authStatusChanged(_that);case SystemProfilePhotoChanged():
return profilePhotoChanged(_that);case SystemMovieFavoriteStatusChanged():
return movieFavoriteStatusChanged(_that);case SystemInitialPreferencesRequested():
return initialPreferencesRequested(_that);case SystemInitialPreferencesFetched():
return initialPreferencesFetched(_that);case SystemPreferencesChanged():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SystemSignOutRequested value)?  signOutRequested,TResult? Function( SystemAuthStatusChanged value)?  authStatusChanged,TResult? Function( SystemProfilePhotoChanged value)?  profilePhotoChanged,TResult? Function( SystemMovieFavoriteStatusChanged value)?  movieFavoriteStatusChanged,TResult? Function( SystemInitialPreferencesRequested value)?  initialPreferencesRequested,TResult? Function( SystemInitialPreferencesFetched value)?  initialPreferencesFetched,TResult? Function( SystemPreferencesChanged value)?  preferencesChanged,}){
final _that = this;
switch (_that) {
case SystemSignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case SystemAuthStatusChanged() when authStatusChanged != null:
return authStatusChanged(_that);case SystemProfilePhotoChanged() when profilePhotoChanged != null:
return profilePhotoChanged(_that);case SystemMovieFavoriteStatusChanged() when movieFavoriteStatusChanged != null:
return movieFavoriteStatusChanged(_that);case SystemInitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested(_that);case SystemInitialPreferencesFetched() when initialPreferencesFetched != null:
return initialPreferencesFetched(_that);case SystemPreferencesChanged() when preferencesChanged != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  signOutRequested,TResult Function( bool isAuthenticated)?  authStatusChanged,TResult Function( String photoUrl)?  profilePhotoChanged,TResult Function( String movieId)?  movieFavoriteStatusChanged,TResult Function()?  initialPreferencesRequested,TResult Function( Preferences preferences)?  initialPreferencesFetched,TResult Function( Preferences preferences)?  preferencesChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SystemSignOutRequested() when signOutRequested != null:
return signOutRequested();case SystemAuthStatusChanged() when authStatusChanged != null:
return authStatusChanged(_that.isAuthenticated);case SystemProfilePhotoChanged() when profilePhotoChanged != null:
return profilePhotoChanged(_that.photoUrl);case SystemMovieFavoriteStatusChanged() when movieFavoriteStatusChanged != null:
return movieFavoriteStatusChanged(_that.movieId);case SystemInitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested();case SystemInitialPreferencesFetched() when initialPreferencesFetched != null:
return initialPreferencesFetched(_that.preferences);case SystemPreferencesChanged() when preferencesChanged != null:
return preferencesChanged(_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  signOutRequested,required TResult Function( bool isAuthenticated)  authStatusChanged,required TResult Function( String photoUrl)  profilePhotoChanged,required TResult Function( String movieId)  movieFavoriteStatusChanged,required TResult Function()  initialPreferencesRequested,required TResult Function( Preferences preferences)  initialPreferencesFetched,required TResult Function( Preferences preferences)  preferencesChanged,}) {final _that = this;
switch (_that) {
case SystemSignOutRequested():
return signOutRequested();case SystemAuthStatusChanged():
return authStatusChanged(_that.isAuthenticated);case SystemProfilePhotoChanged():
return profilePhotoChanged(_that.photoUrl);case SystemMovieFavoriteStatusChanged():
return movieFavoriteStatusChanged(_that.movieId);case SystemInitialPreferencesRequested():
return initialPreferencesRequested();case SystemInitialPreferencesFetched():
return initialPreferencesFetched(_that.preferences);case SystemPreferencesChanged():
return preferencesChanged(_that.preferences);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  signOutRequested,TResult? Function( bool isAuthenticated)?  authStatusChanged,TResult? Function( String photoUrl)?  profilePhotoChanged,TResult? Function( String movieId)?  movieFavoriteStatusChanged,TResult? Function()?  initialPreferencesRequested,TResult? Function( Preferences preferences)?  initialPreferencesFetched,TResult? Function( Preferences preferences)?  preferencesChanged,}) {final _that = this;
switch (_that) {
case SystemSignOutRequested() when signOutRequested != null:
return signOutRequested();case SystemAuthStatusChanged() when authStatusChanged != null:
return authStatusChanged(_that.isAuthenticated);case SystemProfilePhotoChanged() when profilePhotoChanged != null:
return profilePhotoChanged(_that.photoUrl);case SystemMovieFavoriteStatusChanged() when movieFavoriteStatusChanged != null:
return movieFavoriteStatusChanged(_that.movieId);case SystemInitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested();case SystemInitialPreferencesFetched() when initialPreferencesFetched != null:
return initialPreferencesFetched(_that.preferences);case SystemPreferencesChanged() when preferencesChanged != null:
return preferencesChanged(_that.preferences);case _:
  return null;

}
}

}

/// @nodoc


class SystemSignOutRequested implements SystemEvent {
  const SystemSignOutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemSignOutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemEvent.signOutRequested()';
}


}




/// @nodoc


class SystemAuthStatusChanged implements SystemEvent {
  const SystemAuthStatusChanged({required this.isAuthenticated});
  

 final  bool isAuthenticated;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemAuthStatusChangedCopyWith<SystemAuthStatusChanged> get copyWith => _$SystemAuthStatusChangedCopyWithImpl<SystemAuthStatusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemAuthStatusChanged&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthenticated);

@override
String toString() {
  return 'SystemEvent.authStatusChanged(isAuthenticated: $isAuthenticated)';
}


}

/// @nodoc
abstract mixin class $SystemAuthStatusChangedCopyWith<$Res> implements $SystemEventCopyWith<$Res> {
  factory $SystemAuthStatusChangedCopyWith(SystemAuthStatusChanged value, $Res Function(SystemAuthStatusChanged) _then) = _$SystemAuthStatusChangedCopyWithImpl;
@useResult
$Res call({
 bool isAuthenticated
});




}
/// @nodoc
class _$SystemAuthStatusChangedCopyWithImpl<$Res>
    implements $SystemAuthStatusChangedCopyWith<$Res> {
  _$SystemAuthStatusChangedCopyWithImpl(this._self, this._then);

  final SystemAuthStatusChanged _self;
  final $Res Function(SystemAuthStatusChanged) _then;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isAuthenticated = null,}) {
  return _then(SystemAuthStatusChanged(
isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SystemProfilePhotoChanged implements SystemEvent {
  const SystemProfilePhotoChanged({required this.photoUrl});
  

 final  String photoUrl;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemProfilePhotoChangedCopyWith<SystemProfilePhotoChanged> get copyWith => _$SystemProfilePhotoChangedCopyWithImpl<SystemProfilePhotoChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemProfilePhotoChanged&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}


@override
int get hashCode => Object.hash(runtimeType,photoUrl);

@override
String toString() {
  return 'SystemEvent.profilePhotoChanged(photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class $SystemProfilePhotoChangedCopyWith<$Res> implements $SystemEventCopyWith<$Res> {
  factory $SystemProfilePhotoChangedCopyWith(SystemProfilePhotoChanged value, $Res Function(SystemProfilePhotoChanged) _then) = _$SystemProfilePhotoChangedCopyWithImpl;
@useResult
$Res call({
 String photoUrl
});




}
/// @nodoc
class _$SystemProfilePhotoChangedCopyWithImpl<$Res>
    implements $SystemProfilePhotoChangedCopyWith<$Res> {
  _$SystemProfilePhotoChangedCopyWithImpl(this._self, this._then);

  final SystemProfilePhotoChanged _self;
  final $Res Function(SystemProfilePhotoChanged) _then;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? photoUrl = null,}) {
  return _then(SystemProfilePhotoChanged(
photoUrl: null == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SystemMovieFavoriteStatusChanged implements SystemEvent {
  const SystemMovieFavoriteStatusChanged({required this.movieId});
  

 final  String movieId;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemMovieFavoriteStatusChangedCopyWith<SystemMovieFavoriteStatusChanged> get copyWith => _$SystemMovieFavoriteStatusChangedCopyWithImpl<SystemMovieFavoriteStatusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemMovieFavoriteStatusChanged&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'SystemEvent.movieFavoriteStatusChanged(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class $SystemMovieFavoriteStatusChangedCopyWith<$Res> implements $SystemEventCopyWith<$Res> {
  factory $SystemMovieFavoriteStatusChangedCopyWith(SystemMovieFavoriteStatusChanged value, $Res Function(SystemMovieFavoriteStatusChanged) _then) = _$SystemMovieFavoriteStatusChangedCopyWithImpl;
@useResult
$Res call({
 String movieId
});




}
/// @nodoc
class _$SystemMovieFavoriteStatusChangedCopyWithImpl<$Res>
    implements $SystemMovieFavoriteStatusChangedCopyWith<$Res> {
  _$SystemMovieFavoriteStatusChangedCopyWithImpl(this._self, this._then);

  final SystemMovieFavoriteStatusChanged _self;
  final $Res Function(SystemMovieFavoriteStatusChanged) _then;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(SystemMovieFavoriteStatusChanged(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SystemInitialPreferencesRequested implements SystemEvent {
  const SystemInitialPreferencesRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemInitialPreferencesRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemEvent.initialPreferencesRequested()';
}


}




/// @nodoc


class SystemInitialPreferencesFetched implements SystemEvent {
  const SystemInitialPreferencesFetched({required this.preferences});
  

 final  Preferences preferences;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemInitialPreferencesFetchedCopyWith<SystemInitialPreferencesFetched> get copyWith => _$SystemInitialPreferencesFetchedCopyWithImpl<SystemInitialPreferencesFetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemInitialPreferencesFetched&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,preferences);

@override
String toString() {
  return 'SystemEvent.initialPreferencesFetched(preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $SystemInitialPreferencesFetchedCopyWith<$Res> implements $SystemEventCopyWith<$Res> {
  factory $SystemInitialPreferencesFetchedCopyWith(SystemInitialPreferencesFetched value, $Res Function(SystemInitialPreferencesFetched) _then) = _$SystemInitialPreferencesFetchedCopyWithImpl;
@useResult
$Res call({
 Preferences preferences
});


$PreferencesCopyWith<$Res> get preferences;

}
/// @nodoc
class _$SystemInitialPreferencesFetchedCopyWithImpl<$Res>
    implements $SystemInitialPreferencesFetchedCopyWith<$Res> {
  _$SystemInitialPreferencesFetchedCopyWithImpl(this._self, this._then);

  final SystemInitialPreferencesFetched _self;
  final $Res Function(SystemInitialPreferencesFetched) _then;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? preferences = null,}) {
  return _then(SystemInitialPreferencesFetched(
preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as Preferences,
  ));
}

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreferencesCopyWith<$Res> get preferences {
  
  return $PreferencesCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}

/// @nodoc


class SystemPreferencesChanged implements SystemEvent {
  const SystemPreferencesChanged({required this.preferences});
  

 final  Preferences preferences;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemPreferencesChangedCopyWith<SystemPreferencesChanged> get copyWith => _$SystemPreferencesChangedCopyWithImpl<SystemPreferencesChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemPreferencesChanged&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,preferences);

@override
String toString() {
  return 'SystemEvent.preferencesChanged(preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $SystemPreferencesChangedCopyWith<$Res> implements $SystemEventCopyWith<$Res> {
  factory $SystemPreferencesChangedCopyWith(SystemPreferencesChanged value, $Res Function(SystemPreferencesChanged) _then) = _$SystemPreferencesChangedCopyWithImpl;
@useResult
$Res call({
 Preferences preferences
});


$PreferencesCopyWith<$Res> get preferences;

}
/// @nodoc
class _$SystemPreferencesChangedCopyWithImpl<$Res>
    implements $SystemPreferencesChangedCopyWith<$Res> {
  _$SystemPreferencesChangedCopyWithImpl(this._self, this._then);

  final SystemPreferencesChanged _self;
  final $Res Function(SystemPreferencesChanged) _then;

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? preferences = null,}) {
  return _then(SystemPreferencesChanged(
preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as Preferences,
  ));
}

/// Create a copy of SystemEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreferencesCopyWith<$Res> get preferences {
  
  return $PreferencesCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}

// dart format on
