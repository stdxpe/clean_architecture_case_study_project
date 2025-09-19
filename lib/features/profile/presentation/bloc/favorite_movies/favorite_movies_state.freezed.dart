// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteMoviesState {

 FavoriteMoviesStatus get status; List<Movie> get favoriteMovies; UISideEffect? get uiSideEffect;
/// Create a copy of FavoriteMoviesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteMoviesStateCopyWith<FavoriteMoviesState> get copyWith => _$FavoriteMoviesStateCopyWithImpl<FavoriteMoviesState>(this as FavoriteMoviesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteMoviesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.favoriteMovies, favoriteMovies)&&(identical(other.uiSideEffect, uiSideEffect) || other.uiSideEffect == uiSideEffect));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(favoriteMovies),uiSideEffect);

@override
String toString() {
  return 'FavoriteMoviesState(status: $status, favoriteMovies: $favoriteMovies, uiSideEffect: $uiSideEffect)';
}


}

/// @nodoc
abstract mixin class $FavoriteMoviesStateCopyWith<$Res>  {
  factory $FavoriteMoviesStateCopyWith(FavoriteMoviesState value, $Res Function(FavoriteMoviesState) _then) = _$FavoriteMoviesStateCopyWithImpl;
@useResult
$Res call({
 FavoriteMoviesStatus status, List<Movie> favoriteMovies, UISideEffect? uiSideEffect
});


$FavoriteMoviesStatusCopyWith<$Res> get status;$UISideEffectCopyWith<$Res>? get uiSideEffect;

}
/// @nodoc
class _$FavoriteMoviesStateCopyWithImpl<$Res>
    implements $FavoriteMoviesStateCopyWith<$Res> {
  _$FavoriteMoviesStateCopyWithImpl(this._self, this._then);

  final FavoriteMoviesState _self;
  final $Res Function(FavoriteMoviesState) _then;

/// Create a copy of FavoriteMoviesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? favoriteMovies = null,Object? uiSideEffect = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteMoviesStatus,favoriteMovies: null == favoriteMovies ? _self.favoriteMovies : favoriteMovies // ignore: cast_nullable_to_non_nullable
as List<Movie>,uiSideEffect: freezed == uiSideEffect ? _self.uiSideEffect : uiSideEffect // ignore: cast_nullable_to_non_nullable
as UISideEffect?,
  ));
}
/// Create a copy of FavoriteMoviesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteMoviesStatusCopyWith<$Res> get status {
  
  return $FavoriteMoviesStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of FavoriteMoviesState
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


/// Adds pattern-matching-related methods to [FavoriteMoviesState].
extension FavoriteMoviesStatePatterns on FavoriteMoviesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteMoviesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteMoviesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteMoviesState value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteMoviesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteMoviesState value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteMoviesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FavoriteMoviesStatus status,  List<Movie> favoriteMovies,  UISideEffect? uiSideEffect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteMoviesState() when $default != null:
return $default(_that.status,_that.favoriteMovies,_that.uiSideEffect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FavoriteMoviesStatus status,  List<Movie> favoriteMovies,  UISideEffect? uiSideEffect)  $default,) {final _that = this;
switch (_that) {
case _FavoriteMoviesState():
return $default(_that.status,_that.favoriteMovies,_that.uiSideEffect);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FavoriteMoviesStatus status,  List<Movie> favoriteMovies,  UISideEffect? uiSideEffect)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteMoviesState() when $default != null:
return $default(_that.status,_that.favoriteMovies,_that.uiSideEffect);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteMoviesState implements FavoriteMoviesState {
  const _FavoriteMoviesState({required this.status, required final  List<Movie> favoriteMovies, this.uiSideEffect}): _favoriteMovies = favoriteMovies;
  

@override final  FavoriteMoviesStatus status;
 final  List<Movie> _favoriteMovies;
@override List<Movie> get favoriteMovies {
  if (_favoriteMovies is EqualUnmodifiableListView) return _favoriteMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favoriteMovies);
}

@override final  UISideEffect? uiSideEffect;

/// Create a copy of FavoriteMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteMoviesStateCopyWith<_FavoriteMoviesState> get copyWith => __$FavoriteMoviesStateCopyWithImpl<_FavoriteMoviesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteMoviesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._favoriteMovies, _favoriteMovies)&&(identical(other.uiSideEffect, uiSideEffect) || other.uiSideEffect == uiSideEffect));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_favoriteMovies),uiSideEffect);

@override
String toString() {
  return 'FavoriteMoviesState(status: $status, favoriteMovies: $favoriteMovies, uiSideEffect: $uiSideEffect)';
}


}

/// @nodoc
abstract mixin class _$FavoriteMoviesStateCopyWith<$Res> implements $FavoriteMoviesStateCopyWith<$Res> {
  factory _$FavoriteMoviesStateCopyWith(_FavoriteMoviesState value, $Res Function(_FavoriteMoviesState) _then) = __$FavoriteMoviesStateCopyWithImpl;
@override @useResult
$Res call({
 FavoriteMoviesStatus status, List<Movie> favoriteMovies, UISideEffect? uiSideEffect
});


@override $FavoriteMoviesStatusCopyWith<$Res> get status;@override $UISideEffectCopyWith<$Res>? get uiSideEffect;

}
/// @nodoc
class __$FavoriteMoviesStateCopyWithImpl<$Res>
    implements _$FavoriteMoviesStateCopyWith<$Res> {
  __$FavoriteMoviesStateCopyWithImpl(this._self, this._then);

  final _FavoriteMoviesState _self;
  final $Res Function(_FavoriteMoviesState) _then;

/// Create a copy of FavoriteMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? favoriteMovies = null,Object? uiSideEffect = freezed,}) {
  return _then(_FavoriteMoviesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteMoviesStatus,favoriteMovies: null == favoriteMovies ? _self._favoriteMovies : favoriteMovies // ignore: cast_nullable_to_non_nullable
as List<Movie>,uiSideEffect: freezed == uiSideEffect ? _self.uiSideEffect : uiSideEffect // ignore: cast_nullable_to_non_nullable
as UISideEffect?,
  ));
}

/// Create a copy of FavoriteMoviesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FavoriteMoviesStatusCopyWith<$Res> get status {
  
  return $FavoriteMoviesStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of FavoriteMoviesState
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
