// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NetworkStatusChanged value)?  networkStatusChanged,TResult Function( SettingsAuthStatusRequested value)?  authStatusRequested,TResult Function( SettingsAuthStatusChanged value)?  authStatusChanged,TResult Function( SettingsInitialPreferencesRequested value)?  initialPreferencesRequested,TResult Function( SettingsPreferencesChanged value)?  preferencesChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NetworkStatusChanged() when networkStatusChanged != null:
return networkStatusChanged(_that);case SettingsAuthStatusRequested() when authStatusRequested != null:
return authStatusRequested(_that);case SettingsAuthStatusChanged() when authStatusChanged != null:
return authStatusChanged(_that);case SettingsInitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested(_that);case SettingsPreferencesChanged() when preferencesChanged != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NetworkStatusChanged value)  networkStatusChanged,required TResult Function( SettingsAuthStatusRequested value)  authStatusRequested,required TResult Function( SettingsAuthStatusChanged value)  authStatusChanged,required TResult Function( SettingsInitialPreferencesRequested value)  initialPreferencesRequested,required TResult Function( SettingsPreferencesChanged value)  preferencesChanged,}){
final _that = this;
switch (_that) {
case NetworkStatusChanged():
return networkStatusChanged(_that);case SettingsAuthStatusRequested():
return authStatusRequested(_that);case SettingsAuthStatusChanged():
return authStatusChanged(_that);case SettingsInitialPreferencesRequested():
return initialPreferencesRequested(_that);case SettingsPreferencesChanged():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NetworkStatusChanged value)?  networkStatusChanged,TResult? Function( SettingsAuthStatusRequested value)?  authStatusRequested,TResult? Function( SettingsAuthStatusChanged value)?  authStatusChanged,TResult? Function( SettingsInitialPreferencesRequested value)?  initialPreferencesRequested,TResult? Function( SettingsPreferencesChanged value)?  preferencesChanged,}){
final _that = this;
switch (_that) {
case NetworkStatusChanged() when networkStatusChanged != null:
return networkStatusChanged(_that);case SettingsAuthStatusRequested() when authStatusRequested != null:
return authStatusRequested(_that);case SettingsAuthStatusChanged() when authStatusChanged != null:
return authStatusChanged(_that);case SettingsInitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested(_that);case SettingsPreferencesChanged() when preferencesChanged != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isConnected)?  networkStatusChanged,TResult Function( bool isAuthenticated)?  authStatusRequested,TResult Function( bool isAuthenticated)?  authStatusChanged,TResult Function()?  initialPreferencesRequested,TResult Function( Preferences preferences)?  preferencesChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NetworkStatusChanged() when networkStatusChanged != null:
return networkStatusChanged(_that.isConnected);case SettingsAuthStatusRequested() when authStatusRequested != null:
return authStatusRequested(_that.isAuthenticated);case SettingsAuthStatusChanged() when authStatusChanged != null:
return authStatusChanged(_that.isAuthenticated);case SettingsInitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested();case SettingsPreferencesChanged() when preferencesChanged != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isConnected)  networkStatusChanged,required TResult Function( bool isAuthenticated)  authStatusRequested,required TResult Function( bool isAuthenticated)  authStatusChanged,required TResult Function()  initialPreferencesRequested,required TResult Function( Preferences preferences)  preferencesChanged,}) {final _that = this;
switch (_that) {
case NetworkStatusChanged():
return networkStatusChanged(_that.isConnected);case SettingsAuthStatusRequested():
return authStatusRequested(_that.isAuthenticated);case SettingsAuthStatusChanged():
return authStatusChanged(_that.isAuthenticated);case SettingsInitialPreferencesRequested():
return initialPreferencesRequested();case SettingsPreferencesChanged():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isConnected)?  networkStatusChanged,TResult? Function( bool isAuthenticated)?  authStatusRequested,TResult? Function( bool isAuthenticated)?  authStatusChanged,TResult? Function()?  initialPreferencesRequested,TResult? Function( Preferences preferences)?  preferencesChanged,}) {final _that = this;
switch (_that) {
case NetworkStatusChanged() when networkStatusChanged != null:
return networkStatusChanged(_that.isConnected);case SettingsAuthStatusRequested() when authStatusRequested != null:
return authStatusRequested(_that.isAuthenticated);case SettingsAuthStatusChanged() when authStatusChanged != null:
return authStatusChanged(_that.isAuthenticated);case SettingsInitialPreferencesRequested() when initialPreferencesRequested != null:
return initialPreferencesRequested();case SettingsPreferencesChanged() when preferencesChanged != null:
return preferencesChanged(_that.preferences);case _:
  return null;

}
}

}

/// @nodoc


class NetworkStatusChanged implements SettingsEvent {
  const NetworkStatusChanged({required this.isConnected});
  

 final  bool isConnected;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkStatusChangedCopyWith<NetworkStatusChanged> get copyWith => _$NetworkStatusChangedCopyWithImpl<NetworkStatusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkStatusChanged&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'SettingsEvent.networkStatusChanged(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class $NetworkStatusChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $NetworkStatusChangedCopyWith(NetworkStatusChanged value, $Res Function(NetworkStatusChanged) _then) = _$NetworkStatusChangedCopyWithImpl;
@useResult
$Res call({
 bool isConnected
});




}
/// @nodoc
class _$NetworkStatusChangedCopyWithImpl<$Res>
    implements $NetworkStatusChangedCopyWith<$Res> {
  _$NetworkStatusChangedCopyWithImpl(this._self, this._then);

  final NetworkStatusChanged _self;
  final $Res Function(NetworkStatusChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isConnected = null,}) {
  return _then(NetworkStatusChanged(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SettingsAuthStatusRequested implements SettingsEvent {
  const SettingsAuthStatusRequested({required this.isAuthenticated});
  

 final  bool isAuthenticated;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsAuthStatusRequestedCopyWith<SettingsAuthStatusRequested> get copyWith => _$SettingsAuthStatusRequestedCopyWithImpl<SettingsAuthStatusRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsAuthStatusRequested&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthenticated);

@override
String toString() {
  return 'SettingsEvent.authStatusRequested(isAuthenticated: $isAuthenticated)';
}


}

/// @nodoc
abstract mixin class $SettingsAuthStatusRequestedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsAuthStatusRequestedCopyWith(SettingsAuthStatusRequested value, $Res Function(SettingsAuthStatusRequested) _then) = _$SettingsAuthStatusRequestedCopyWithImpl;
@useResult
$Res call({
 bool isAuthenticated
});




}
/// @nodoc
class _$SettingsAuthStatusRequestedCopyWithImpl<$Res>
    implements $SettingsAuthStatusRequestedCopyWith<$Res> {
  _$SettingsAuthStatusRequestedCopyWithImpl(this._self, this._then);

  final SettingsAuthStatusRequested _self;
  final $Res Function(SettingsAuthStatusRequested) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isAuthenticated = null,}) {
  return _then(SettingsAuthStatusRequested(
isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SettingsAuthStatusChanged implements SettingsEvent {
  const SettingsAuthStatusChanged({required this.isAuthenticated});
  

 final  bool isAuthenticated;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsAuthStatusChangedCopyWith<SettingsAuthStatusChanged> get copyWith => _$SettingsAuthStatusChangedCopyWithImpl<SettingsAuthStatusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsAuthStatusChanged&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthenticated);

@override
String toString() {
  return 'SettingsEvent.authStatusChanged(isAuthenticated: $isAuthenticated)';
}


}

/// @nodoc
abstract mixin class $SettingsAuthStatusChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsAuthStatusChangedCopyWith(SettingsAuthStatusChanged value, $Res Function(SettingsAuthStatusChanged) _then) = _$SettingsAuthStatusChangedCopyWithImpl;
@useResult
$Res call({
 bool isAuthenticated
});




}
/// @nodoc
class _$SettingsAuthStatusChangedCopyWithImpl<$Res>
    implements $SettingsAuthStatusChangedCopyWith<$Res> {
  _$SettingsAuthStatusChangedCopyWithImpl(this._self, this._then);

  final SettingsAuthStatusChanged _self;
  final $Res Function(SettingsAuthStatusChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isAuthenticated = null,}) {
  return _then(SettingsAuthStatusChanged(
isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SettingsInitialPreferencesRequested implements SettingsEvent {
  const SettingsInitialPreferencesRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsInitialPreferencesRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.initialPreferencesRequested()';
}


}




/// @nodoc


class SettingsPreferencesChanged implements SettingsEvent {
  const SettingsPreferencesChanged({required this.preferences});
  

 final  Preferences preferences;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsPreferencesChangedCopyWith<SettingsPreferencesChanged> get copyWith => _$SettingsPreferencesChangedCopyWithImpl<SettingsPreferencesChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsPreferencesChanged&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode => Object.hash(runtimeType,preferences);

@override
String toString() {
  return 'SettingsEvent.preferencesChanged(preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $SettingsPreferencesChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsPreferencesChangedCopyWith(SettingsPreferencesChanged value, $Res Function(SettingsPreferencesChanged) _then) = _$SettingsPreferencesChangedCopyWithImpl;
@useResult
$Res call({
 Preferences preferences
});


$PreferencesCopyWith<$Res> get preferences;

}
/// @nodoc
class _$SettingsPreferencesChangedCopyWithImpl<$Res>
    implements $SettingsPreferencesChangedCopyWith<$Res> {
  _$SettingsPreferencesChangedCopyWithImpl(this._self, this._then);

  final SettingsPreferencesChanged _self;
  final $Res Function(SettingsPreferencesChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? preferences = null,}) {
  return _then(SettingsPreferencesChanged(
preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as Preferences,
  ));
}

/// Create a copy of SettingsEvent
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
