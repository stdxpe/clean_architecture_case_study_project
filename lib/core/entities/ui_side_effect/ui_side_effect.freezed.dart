// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_side_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UISideEffect {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UISideEffect);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UISideEffect()';
}


}

/// @nodoc
class $UISideEffectCopyWith<$Res>  {
$UISideEffectCopyWith(UISideEffect _, $Res Function(UISideEffect) __);
}


/// Adds pattern-matching-related methods to [UISideEffect].
extension UISideEffectPatterns on UISideEffect {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Navigate value)?  navigate,TResult Function( _Pop value)?  pop,TResult Function( _NotifyError value)?  notifyError,TResult Function( _NotifySuccess value)?  notifySuccess,TResult Function( _AnimateToNextPage value)?  animateToNextPage,TResult Function( _AnimateToTop value)?  animateToTop,TResult Function( _ShowFavoriteAnimation value)?  showFavoriteAnimation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Navigate() when navigate != null:
return navigate(_that);case _Pop() when pop != null:
return pop(_that);case _NotifyError() when notifyError != null:
return notifyError(_that);case _NotifySuccess() when notifySuccess != null:
return notifySuccess(_that);case _AnimateToNextPage() when animateToNextPage != null:
return animateToNextPage(_that);case _AnimateToTop() when animateToTop != null:
return animateToTop(_that);case _ShowFavoriteAnimation() when showFavoriteAnimation != null:
return showFavoriteAnimation(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Navigate value)  navigate,required TResult Function( _Pop value)  pop,required TResult Function( _NotifyError value)  notifyError,required TResult Function( _NotifySuccess value)  notifySuccess,required TResult Function( _AnimateToNextPage value)  animateToNextPage,required TResult Function( _AnimateToTop value)  animateToTop,required TResult Function( _ShowFavoriteAnimation value)  showFavoriteAnimation,}){
final _that = this;
switch (_that) {
case _Navigate():
return navigate(_that);case _Pop():
return pop(_that);case _NotifyError():
return notifyError(_that);case _NotifySuccess():
return notifySuccess(_that);case _AnimateToNextPage():
return animateToNextPage(_that);case _AnimateToTop():
return animateToTop(_that);case _ShowFavoriteAnimation():
return showFavoriteAnimation(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Navigate value)?  navigate,TResult? Function( _Pop value)?  pop,TResult? Function( _NotifyError value)?  notifyError,TResult? Function( _NotifySuccess value)?  notifySuccess,TResult? Function( _AnimateToNextPage value)?  animateToNextPage,TResult? Function( _AnimateToTop value)?  animateToTop,TResult? Function( _ShowFavoriteAnimation value)?  showFavoriteAnimation,}){
final _that = this;
switch (_that) {
case _Navigate() when navigate != null:
return navigate(_that);case _Pop() when pop != null:
return pop(_that);case _NotifyError() when notifyError != null:
return notifyError(_that);case _NotifySuccess() when notifySuccess != null:
return notifySuccess(_that);case _AnimateToNextPage() when animateToNextPage != null:
return animateToNextPage(_that);case _AnimateToTop() when animateToTop != null:
return animateToTop(_that);case _ShowFavoriteAnimation() when showFavoriteAnimation != null:
return showFavoriteAnimation(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String route)?  navigate,TResult Function( String route)?  pop,TResult Function( String? message)?  notifyError,TResult Function( String? message)?  notifySuccess,TResult Function()?  animateToNextPage,TResult Function()?  animateToTop,TResult Function( bool isFavorite)?  showFavoriteAnimation,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Navigate() when navigate != null:
return navigate(_that.route);case _Pop() when pop != null:
return pop(_that.route);case _NotifyError() when notifyError != null:
return notifyError(_that.message);case _NotifySuccess() when notifySuccess != null:
return notifySuccess(_that.message);case _AnimateToNextPage() when animateToNextPage != null:
return animateToNextPage();case _AnimateToTop() when animateToTop != null:
return animateToTop();case _ShowFavoriteAnimation() when showFavoriteAnimation != null:
return showFavoriteAnimation(_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String route)  navigate,required TResult Function( String route)  pop,required TResult Function( String? message)  notifyError,required TResult Function( String? message)  notifySuccess,required TResult Function()  animateToNextPage,required TResult Function()  animateToTop,required TResult Function( bool isFavorite)  showFavoriteAnimation,}) {final _that = this;
switch (_that) {
case _Navigate():
return navigate(_that.route);case _Pop():
return pop(_that.route);case _NotifyError():
return notifyError(_that.message);case _NotifySuccess():
return notifySuccess(_that.message);case _AnimateToNextPage():
return animateToNextPage();case _AnimateToTop():
return animateToTop();case _ShowFavoriteAnimation():
return showFavoriteAnimation(_that.isFavorite);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String route)?  navigate,TResult? Function( String route)?  pop,TResult? Function( String? message)?  notifyError,TResult? Function( String? message)?  notifySuccess,TResult? Function()?  animateToNextPage,TResult? Function()?  animateToTop,TResult? Function( bool isFavorite)?  showFavoriteAnimation,}) {final _that = this;
switch (_that) {
case _Navigate() when navigate != null:
return navigate(_that.route);case _Pop() when pop != null:
return pop(_that.route);case _NotifyError() when notifyError != null:
return notifyError(_that.message);case _NotifySuccess() when notifySuccess != null:
return notifySuccess(_that.message);case _AnimateToNextPage() when animateToNextPage != null:
return animateToNextPage();case _AnimateToTop() when animateToTop != null:
return animateToTop();case _ShowFavoriteAnimation() when showFavoriteAnimation != null:
return showFavoriteAnimation(_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _Navigate implements UISideEffect {
  const _Navigate(this.route);
  

 final  String route;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigateCopyWith<_Navigate> get copyWith => __$NavigateCopyWithImpl<_Navigate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Navigate&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,route);

@override
String toString() {
  return 'UISideEffect.navigate(route: $route)';
}


}

/// @nodoc
abstract mixin class _$NavigateCopyWith<$Res> implements $UISideEffectCopyWith<$Res> {
  factory _$NavigateCopyWith(_Navigate value, $Res Function(_Navigate) _then) = __$NavigateCopyWithImpl;
@useResult
$Res call({
 String route
});




}
/// @nodoc
class __$NavigateCopyWithImpl<$Res>
    implements _$NavigateCopyWith<$Res> {
  __$NavigateCopyWithImpl(this._self, this._then);

  final _Navigate _self;
  final $Res Function(_Navigate) _then;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? route = null,}) {
  return _then(_Navigate(
null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Pop implements UISideEffect {
  const _Pop(this.route);
  

 final  String route;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopCopyWith<_Pop> get copyWith => __$PopCopyWithImpl<_Pop>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pop&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,route);

@override
String toString() {
  return 'UISideEffect.pop(route: $route)';
}


}

/// @nodoc
abstract mixin class _$PopCopyWith<$Res> implements $UISideEffectCopyWith<$Res> {
  factory _$PopCopyWith(_Pop value, $Res Function(_Pop) _then) = __$PopCopyWithImpl;
@useResult
$Res call({
 String route
});




}
/// @nodoc
class __$PopCopyWithImpl<$Res>
    implements _$PopCopyWith<$Res> {
  __$PopCopyWithImpl(this._self, this._then);

  final _Pop _self;
  final $Res Function(_Pop) _then;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? route = null,}) {
  return _then(_Pop(
null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NotifyError implements UISideEffect {
  const _NotifyError(this.message);
  

 final  String? message;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotifyErrorCopyWith<_NotifyError> get copyWith => __$NotifyErrorCopyWithImpl<_NotifyError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotifyError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UISideEffect.notifyError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NotifyErrorCopyWith<$Res> implements $UISideEffectCopyWith<$Res> {
  factory _$NotifyErrorCopyWith(_NotifyError value, $Res Function(_NotifyError) _then) = __$NotifyErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$NotifyErrorCopyWithImpl<$Res>
    implements _$NotifyErrorCopyWith<$Res> {
  __$NotifyErrorCopyWithImpl(this._self, this._then);

  final _NotifyError _self;
  final $Res Function(_NotifyError) _then;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_NotifyError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _NotifySuccess implements UISideEffect {
  const _NotifySuccess(this.message);
  

 final  String? message;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotifySuccessCopyWith<_NotifySuccess> get copyWith => __$NotifySuccessCopyWithImpl<_NotifySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotifySuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UISideEffect.notifySuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class _$NotifySuccessCopyWith<$Res> implements $UISideEffectCopyWith<$Res> {
  factory _$NotifySuccessCopyWith(_NotifySuccess value, $Res Function(_NotifySuccess) _then) = __$NotifySuccessCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$NotifySuccessCopyWithImpl<$Res>
    implements _$NotifySuccessCopyWith<$Res> {
  __$NotifySuccessCopyWithImpl(this._self, this._then);

  final _NotifySuccess _self;
  final $Res Function(_NotifySuccess) _then;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_NotifySuccess(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AnimateToNextPage implements UISideEffect {
  const _AnimateToNextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimateToNextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UISideEffect.animateToNextPage()';
}


}




/// @nodoc


class _AnimateToTop implements UISideEffect {
  const _AnimateToTop();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimateToTop);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UISideEffect.animateToTop()';
}


}




/// @nodoc


class _ShowFavoriteAnimation implements UISideEffect {
  const _ShowFavoriteAnimation(this.isFavorite);
  

 final  bool isFavorite;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowFavoriteAnimationCopyWith<_ShowFavoriteAnimation> get copyWith => __$ShowFavoriteAnimationCopyWithImpl<_ShowFavoriteAnimation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowFavoriteAnimation&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,isFavorite);

@override
String toString() {
  return 'UISideEffect.showFavoriteAnimation(isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$ShowFavoriteAnimationCopyWith<$Res> implements $UISideEffectCopyWith<$Res> {
  factory _$ShowFavoriteAnimationCopyWith(_ShowFavoriteAnimation value, $Res Function(_ShowFavoriteAnimation) _then) = __$ShowFavoriteAnimationCopyWithImpl;
@useResult
$Res call({
 bool isFavorite
});




}
/// @nodoc
class __$ShowFavoriteAnimationCopyWithImpl<$Res>
    implements _$ShowFavoriteAnimationCopyWith<$Res> {
  __$ShowFavoriteAnimationCopyWithImpl(this._self, this._then);

  final _ShowFavoriteAnimation _self;
  final $Res Function(_ShowFavoriteAnimation) _then;

/// Create a copy of UISideEffect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFavorite = null,}) {
  return _then(_ShowFavoriteAnimation(
null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
