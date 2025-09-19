// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BonusReward {

 int get id; String get title; String get iconPath;
/// Create a copy of BonusReward
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusRewardCopyWith<BonusReward> get copyWith => _$BonusRewardCopyWithImpl<BonusReward>(this as BonusReward, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusReward&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.iconPath, iconPath) || other.iconPath == iconPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,iconPath);

@override
String toString() {
  return 'BonusReward(id: $id, title: $title, iconPath: $iconPath)';
}


}

/// @nodoc
abstract mixin class $BonusRewardCopyWith<$Res>  {
  factory $BonusRewardCopyWith(BonusReward value, $Res Function(BonusReward) _then) = _$BonusRewardCopyWithImpl;
@useResult
$Res call({
 int id, String title, String iconPath
});




}
/// @nodoc
class _$BonusRewardCopyWithImpl<$Res>
    implements $BonusRewardCopyWith<$Res> {
  _$BonusRewardCopyWithImpl(this._self, this._then);

  final BonusReward _self;
  final $Res Function(BonusReward) _then;

/// Create a copy of BonusReward
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? iconPath = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,iconPath: null == iconPath ? _self.iconPath : iconPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusReward].
extension BonusRewardPatterns on BonusReward {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusReward value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusReward() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusReward value)  $default,){
final _that = this;
switch (_that) {
case _BonusReward():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusReward value)?  $default,){
final _that = this;
switch (_that) {
case _BonusReward() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String iconPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusReward() when $default != null:
return $default(_that.id,_that.title,_that.iconPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String iconPath)  $default,) {final _that = this;
switch (_that) {
case _BonusReward():
return $default(_that.id,_that.title,_that.iconPath);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String iconPath)?  $default,) {final _that = this;
switch (_that) {
case _BonusReward() when $default != null:
return $default(_that.id,_that.title,_that.iconPath);case _:
  return null;

}
}

}

/// @nodoc


class _BonusReward implements BonusReward {
  const _BonusReward({required this.id, required this.title, required this.iconPath});
  

@override final  int id;
@override final  String title;
@override final  String iconPath;

/// Create a copy of BonusReward
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusRewardCopyWith<_BonusReward> get copyWith => __$BonusRewardCopyWithImpl<_BonusReward>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusReward&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.iconPath, iconPath) || other.iconPath == iconPath));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,iconPath);

@override
String toString() {
  return 'BonusReward(id: $id, title: $title, iconPath: $iconPath)';
}


}

/// @nodoc
abstract mixin class _$BonusRewardCopyWith<$Res> implements $BonusRewardCopyWith<$Res> {
  factory _$BonusRewardCopyWith(_BonusReward value, $Res Function(_BonusReward) _then) = __$BonusRewardCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String iconPath
});




}
/// @nodoc
class __$BonusRewardCopyWithImpl<$Res>
    implements _$BonusRewardCopyWith<$Res> {
  __$BonusRewardCopyWithImpl(this._self, this._then);

  final _BonusReward _self;
  final $Res Function(_BonusReward) _then;

/// Create a copy of BonusReward
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? iconPath = null,}) {
  return _then(_BonusReward(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,iconPath: null == iconPath ? _self.iconPath : iconPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
