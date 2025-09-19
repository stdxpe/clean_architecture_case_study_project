// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_movies_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteMoviesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteMoviesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteMoviesEvent()';
}


}

/// @nodoc
class $FavoriteMoviesEventCopyWith<$Res>  {
$FavoriteMoviesEventCopyWith(FavoriteMoviesEvent _, $Res Function(FavoriteMoviesEvent) __);
}


/// Adds pattern-matching-related methods to [FavoriteMoviesEvent].
extension FavoriteMoviesEventPatterns on FavoriteMoviesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetFavoritesEvent value)?  getFavorites,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetFavoritesEvent() when getFavorites != null:
return getFavorites(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetFavoritesEvent value)  getFavorites,}){
final _that = this;
switch (_that) {
case GetFavoritesEvent():
return getFavorites(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetFavoritesEvent value)?  getFavorites,}){
final _that = this;
switch (_that) {
case GetFavoritesEvent() when getFavorites != null:
return getFavorites(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getFavorites,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetFavoritesEvent() when getFavorites != null:
return getFavorites();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getFavorites,}) {final _that = this;
switch (_that) {
case GetFavoritesEvent():
return getFavorites();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getFavorites,}) {final _that = this;
switch (_that) {
case GetFavoritesEvent() when getFavorites != null:
return getFavorites();case _:
  return null;

}
}

}

/// @nodoc


class GetFavoritesEvent implements FavoriteMoviesEvent {
  const GetFavoritesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteMoviesEvent.getFavorites()';
}


}




// dart format on
