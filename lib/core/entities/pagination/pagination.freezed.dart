// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Pagination {

 int get totalCount; int get perPage; int get maxPage; int get currentPage;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,totalCount,perPage,maxPage,currentPage);

@override
String toString() {
  return 'Pagination(totalCount: $totalCount, perPage: $perPage, maxPage: $maxPage, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
 int totalCount, int perPage, int maxPage, int currentPage
});




}
/// @nodoc
class _$PaginationCopyWithImpl<$Res>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? perPage = null,Object? maxPage = null,Object? currentPage = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,maxPage: null == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Pagination].
extension PaginationPatterns on Pagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pagination value)  $default,){
final _that = this;
switch (_that) {
case _Pagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pagination value)?  $default,){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalCount,  int perPage,  int maxPage,  int currentPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.totalCount,_that.perPage,_that.maxPage,_that.currentPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalCount,  int perPage,  int maxPage,  int currentPage)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
return $default(_that.totalCount,_that.perPage,_that.maxPage,_that.currentPage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalCount,  int perPage,  int maxPage,  int currentPage)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.totalCount,_that.perPage,_that.maxPage,_that.currentPage);case _:
  return null;

}
}

}

/// @nodoc


class _Pagination implements Pagination {
  const _Pagination({required this.totalCount, required this.perPage, required this.maxPage, required this.currentPage});
  

@override final  int totalCount;
@override final  int perPage;
@override final  int maxPage;
@override final  int currentPage;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationCopyWith<_Pagination> get copyWith => __$PaginationCopyWithImpl<_Pagination>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}


@override
int get hashCode => Object.hash(runtimeType,totalCount,perPage,maxPage,currentPage);

@override
String toString() {
  return 'Pagination(totalCount: $totalCount, perPage: $perPage, maxPage: $maxPage, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
 int totalCount, int perPage, int maxPage, int currentPage
});




}
/// @nodoc
class __$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? perPage = null,Object? maxPage = null,Object? currentPage = null,}) {
  return _then(_Pagination(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,maxPage: null == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
