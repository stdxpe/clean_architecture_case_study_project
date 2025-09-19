// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadInitialMovies value)?  loadInitialMovies,TResult Function( LoadMoreMovies value)?  loadMoreMovies,TResult Function( ToggleFavorite value)?  toggleFavoriteMovie,TResult Function( ChangePageViewIndex value)?  changePageViewIndex,TResult Function( ScrollToTop value)?  scrollToTop,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadInitialMovies() when loadInitialMovies != null:
return loadInitialMovies(_that);case LoadMoreMovies() when loadMoreMovies != null:
return loadMoreMovies(_that);case ToggleFavorite() when toggleFavoriteMovie != null:
return toggleFavoriteMovie(_that);case ChangePageViewIndex() when changePageViewIndex != null:
return changePageViewIndex(_that);case ScrollToTop() when scrollToTop != null:
return scrollToTop(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadInitialMovies value)  loadInitialMovies,required TResult Function( LoadMoreMovies value)  loadMoreMovies,required TResult Function( ToggleFavorite value)  toggleFavoriteMovie,required TResult Function( ChangePageViewIndex value)  changePageViewIndex,required TResult Function( ScrollToTop value)  scrollToTop,}){
final _that = this;
switch (_that) {
case LoadInitialMovies():
return loadInitialMovies(_that);case LoadMoreMovies():
return loadMoreMovies(_that);case ToggleFavorite():
return toggleFavoriteMovie(_that);case ChangePageViewIndex():
return changePageViewIndex(_that);case ScrollToTop():
return scrollToTop(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadInitialMovies value)?  loadInitialMovies,TResult? Function( LoadMoreMovies value)?  loadMoreMovies,TResult? Function( ToggleFavorite value)?  toggleFavoriteMovie,TResult? Function( ChangePageViewIndex value)?  changePageViewIndex,TResult? Function( ScrollToTop value)?  scrollToTop,}){
final _that = this;
switch (_that) {
case LoadInitialMovies() when loadInitialMovies != null:
return loadInitialMovies(_that);case LoadMoreMovies() when loadMoreMovies != null:
return loadMoreMovies(_that);case ToggleFavorite() when toggleFavoriteMovie != null:
return toggleFavoriteMovie(_that);case ChangePageViewIndex() when changePageViewIndex != null:
return changePageViewIndex(_that);case ScrollToTop() when scrollToTop != null:
return scrollToTop(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadInitialMovies,TResult Function()?  loadMoreMovies,TResult Function( String movieId)?  toggleFavoriteMovie,TResult Function( int index)?  changePageViewIndex,TResult Function()?  scrollToTop,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadInitialMovies() when loadInitialMovies != null:
return loadInitialMovies();case LoadMoreMovies() when loadMoreMovies != null:
return loadMoreMovies();case ToggleFavorite() when toggleFavoriteMovie != null:
return toggleFavoriteMovie(_that.movieId);case ChangePageViewIndex() when changePageViewIndex != null:
return changePageViewIndex(_that.index);case ScrollToTop() when scrollToTop != null:
return scrollToTop();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadInitialMovies,required TResult Function()  loadMoreMovies,required TResult Function( String movieId)  toggleFavoriteMovie,required TResult Function( int index)  changePageViewIndex,required TResult Function()  scrollToTop,}) {final _that = this;
switch (_that) {
case LoadInitialMovies():
return loadInitialMovies();case LoadMoreMovies():
return loadMoreMovies();case ToggleFavorite():
return toggleFavoriteMovie(_that.movieId);case ChangePageViewIndex():
return changePageViewIndex(_that.index);case ScrollToTop():
return scrollToTop();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadInitialMovies,TResult? Function()?  loadMoreMovies,TResult? Function( String movieId)?  toggleFavoriteMovie,TResult? Function( int index)?  changePageViewIndex,TResult? Function()?  scrollToTop,}) {final _that = this;
switch (_that) {
case LoadInitialMovies() when loadInitialMovies != null:
return loadInitialMovies();case LoadMoreMovies() when loadMoreMovies != null:
return loadMoreMovies();case ToggleFavorite() when toggleFavoriteMovie != null:
return toggleFavoriteMovie(_that.movieId);case ChangePageViewIndex() when changePageViewIndex != null:
return changePageViewIndex(_that.index);case ScrollToTop() when scrollToTop != null:
return scrollToTop();case _:
  return null;

}
}

}

/// @nodoc


class LoadInitialMovies implements HomeEvent {
  const LoadInitialMovies();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadInitialMovies);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadInitialMovies()';
}


}




/// @nodoc


class LoadMoreMovies implements HomeEvent {
  const LoadMoreMovies();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreMovies);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadMoreMovies()';
}


}




/// @nodoc


class ToggleFavorite implements HomeEvent {
  const ToggleFavorite(this.movieId);
  

 final  String movieId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFavoriteCopyWith<ToggleFavorite> get copyWith => _$ToggleFavoriteCopyWithImpl<ToggleFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFavorite&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'HomeEvent.toggleFavoriteMovie(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class $ToggleFavoriteCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $ToggleFavoriteCopyWith(ToggleFavorite value, $Res Function(ToggleFavorite) _then) = _$ToggleFavoriteCopyWithImpl;
@useResult
$Res call({
 String movieId
});




}
/// @nodoc
class _$ToggleFavoriteCopyWithImpl<$Res>
    implements $ToggleFavoriteCopyWith<$Res> {
  _$ToggleFavoriteCopyWithImpl(this._self, this._then);

  final ToggleFavorite _self;
  final $Res Function(ToggleFavorite) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(ToggleFavorite(
null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangePageViewIndex implements HomeEvent {
  const ChangePageViewIndex(this.index);
  

 final  int index;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePageViewIndexCopyWith<ChangePageViewIndex> get copyWith => _$ChangePageViewIndexCopyWithImpl<ChangePageViewIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePageViewIndex&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'HomeEvent.changePageViewIndex(index: $index)';
}


}

/// @nodoc
abstract mixin class $ChangePageViewIndexCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $ChangePageViewIndexCopyWith(ChangePageViewIndex value, $Res Function(ChangePageViewIndex) _then) = _$ChangePageViewIndexCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$ChangePageViewIndexCopyWithImpl<$Res>
    implements $ChangePageViewIndexCopyWith<$Res> {
  _$ChangePageViewIndexCopyWithImpl(this._self, this._then);

  final ChangePageViewIndex _self;
  final $Res Function(ChangePageViewIndex) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(ChangePageViewIndex(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ScrollToTop implements HomeEvent {
  const ScrollToTop();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScrollToTop);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.scrollToTop()';
}


}




// dart format on
