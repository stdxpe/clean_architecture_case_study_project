// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_pack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TokenPack {

 int get id; int get discountPercent; double get currentPrice; String get formerTokenCount; String get currentTokenCount; Color get gradientColor;
/// Create a copy of TokenPack
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenPackCopyWith<TokenPack> get copyWith => _$TokenPackCopyWithImpl<TokenPack>(this as TokenPack, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenPack&&(identical(other.id, id) || other.id == id)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.formerTokenCount, formerTokenCount) || other.formerTokenCount == formerTokenCount)&&(identical(other.currentTokenCount, currentTokenCount) || other.currentTokenCount == currentTokenCount)&&(identical(other.gradientColor, gradientColor) || other.gradientColor == gradientColor));
}


@override
int get hashCode => Object.hash(runtimeType,id,discountPercent,currentPrice,formerTokenCount,currentTokenCount,gradientColor);

@override
String toString() {
  return 'TokenPack(id: $id, discountPercent: $discountPercent, currentPrice: $currentPrice, formerTokenCount: $formerTokenCount, currentTokenCount: $currentTokenCount, gradientColor: $gradientColor)';
}


}

/// @nodoc
abstract mixin class $TokenPackCopyWith<$Res>  {
  factory $TokenPackCopyWith(TokenPack value, $Res Function(TokenPack) _then) = _$TokenPackCopyWithImpl;
@useResult
$Res call({
 int id, int discountPercent, double currentPrice, String formerTokenCount, String currentTokenCount, Color gradientColor
});




}
/// @nodoc
class _$TokenPackCopyWithImpl<$Res>
    implements $TokenPackCopyWith<$Res> {
  _$TokenPackCopyWithImpl(this._self, this._then);

  final TokenPack _self;
  final $Res Function(TokenPack) _then;

/// Create a copy of TokenPack
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? discountPercent = null,Object? currentPrice = null,Object? formerTokenCount = null,Object? currentTokenCount = null,Object? gradientColor = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,formerTokenCount: null == formerTokenCount ? _self.formerTokenCount : formerTokenCount // ignore: cast_nullable_to_non_nullable
as String,currentTokenCount: null == currentTokenCount ? _self.currentTokenCount : currentTokenCount // ignore: cast_nullable_to_non_nullable
as String,gradientColor: null == gradientColor ? _self.gradientColor : gradientColor // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenPack].
extension TokenPackPatterns on TokenPack {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenPack value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenPack() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenPack value)  $default,){
final _that = this;
switch (_that) {
case _TokenPack():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenPack value)?  $default,){
final _that = this;
switch (_that) {
case _TokenPack() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int discountPercent,  double currentPrice,  String formerTokenCount,  String currentTokenCount,  Color gradientColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenPack() when $default != null:
return $default(_that.id,_that.discountPercent,_that.currentPrice,_that.formerTokenCount,_that.currentTokenCount,_that.gradientColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int discountPercent,  double currentPrice,  String formerTokenCount,  String currentTokenCount,  Color gradientColor)  $default,) {final _that = this;
switch (_that) {
case _TokenPack():
return $default(_that.id,_that.discountPercent,_that.currentPrice,_that.formerTokenCount,_that.currentTokenCount,_that.gradientColor);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int discountPercent,  double currentPrice,  String formerTokenCount,  String currentTokenCount,  Color gradientColor)?  $default,) {final _that = this;
switch (_that) {
case _TokenPack() when $default != null:
return $default(_that.id,_that.discountPercent,_that.currentPrice,_that.formerTokenCount,_that.currentTokenCount,_that.gradientColor);case _:
  return null;

}
}

}

/// @nodoc


class _TokenPack implements TokenPack {
  const _TokenPack({required this.id, required this.discountPercent, required this.currentPrice, required this.formerTokenCount, required this.currentTokenCount, required this.gradientColor});
  

@override final  int id;
@override final  int discountPercent;
@override final  double currentPrice;
@override final  String formerTokenCount;
@override final  String currentTokenCount;
@override final  Color gradientColor;

/// Create a copy of TokenPack
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenPackCopyWith<_TokenPack> get copyWith => __$TokenPackCopyWithImpl<_TokenPack>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenPack&&(identical(other.id, id) || other.id == id)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.formerTokenCount, formerTokenCount) || other.formerTokenCount == formerTokenCount)&&(identical(other.currentTokenCount, currentTokenCount) || other.currentTokenCount == currentTokenCount)&&(identical(other.gradientColor, gradientColor) || other.gradientColor == gradientColor));
}


@override
int get hashCode => Object.hash(runtimeType,id,discountPercent,currentPrice,formerTokenCount,currentTokenCount,gradientColor);

@override
String toString() {
  return 'TokenPack(id: $id, discountPercent: $discountPercent, currentPrice: $currentPrice, formerTokenCount: $formerTokenCount, currentTokenCount: $currentTokenCount, gradientColor: $gradientColor)';
}


}

/// @nodoc
abstract mixin class _$TokenPackCopyWith<$Res> implements $TokenPackCopyWith<$Res> {
  factory _$TokenPackCopyWith(_TokenPack value, $Res Function(_TokenPack) _then) = __$TokenPackCopyWithImpl;
@override @useResult
$Res call({
 int id, int discountPercent, double currentPrice, String formerTokenCount, String currentTokenCount, Color gradientColor
});




}
/// @nodoc
class __$TokenPackCopyWithImpl<$Res>
    implements _$TokenPackCopyWith<$Res> {
  __$TokenPackCopyWithImpl(this._self, this._then);

  final _TokenPack _self;
  final $Res Function(_TokenPack) _then;

/// Create a copy of TokenPack
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? discountPercent = null,Object? currentPrice = null,Object? formerTokenCount = null,Object? currentTokenCount = null,Object? gradientColor = null,}) {
  return _then(_TokenPack(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,formerTokenCount: null == formerTokenCount ? _self.formerTokenCount : formerTokenCount // ignore: cast_nullable_to_non_nullable
as String,currentTokenCount: null == currentTokenCount ? _self.currentTokenCount : currentTokenCount // ignore: cast_nullable_to_non_nullable
as String,gradientColor: null == gradientColor ? _self.gradientColor : gradientColor // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on
