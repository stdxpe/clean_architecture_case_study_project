// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LogRecord {

 String get caller; String get message; Map<String, Object?>? get params;
/// Create a copy of LogRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogRecordCopyWith<LogRecord> get copyWith => _$LogRecordCopyWithImpl<LogRecord>(this as LogRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogRecord&&(identical(other.caller, caller) || other.caller == caller)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.params, params));
}


@override
int get hashCode => Object.hash(runtimeType,caller,message,const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'LogRecord(caller: $caller, message: $message, params: $params)';
}


}

/// @nodoc
abstract mixin class $LogRecordCopyWith<$Res>  {
  factory $LogRecordCopyWith(LogRecord value, $Res Function(LogRecord) _then) = _$LogRecordCopyWithImpl;
@useResult
$Res call({
 String caller, String message, Map<String, Object?>? params
});




}
/// @nodoc
class _$LogRecordCopyWithImpl<$Res>
    implements $LogRecordCopyWith<$Res> {
  _$LogRecordCopyWithImpl(this._self, this._then);

  final LogRecord _self;
  final $Res Function(LogRecord) _then;

/// Create a copy of LogRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? caller = null,Object? message = null,Object? params = freezed,}) {
  return _then(_self.copyWith(
caller: null == caller ? _self.caller : caller // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LogRecord].
extension LogRecordPatterns on LogRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogRecord value)  $default,){
final _that = this;
switch (_that) {
case _LogRecord():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogRecord value)?  $default,){
final _that = this;
switch (_that) {
case _LogRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String caller,  String message,  Map<String, Object?>? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogRecord() when $default != null:
return $default(_that.caller,_that.message,_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String caller,  String message,  Map<String, Object?>? params)  $default,) {final _that = this;
switch (_that) {
case _LogRecord():
return $default(_that.caller,_that.message,_that.params);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String caller,  String message,  Map<String, Object?>? params)?  $default,) {final _that = this;
switch (_that) {
case _LogRecord() when $default != null:
return $default(_that.caller,_that.message,_that.params);case _:
  return null;

}
}

}

/// @nodoc


class _LogRecord extends LogRecord {
  const _LogRecord({required this.caller, required this.message, final  Map<String, Object?>? params}): _params = params,super._();
  

@override final  String caller;
@override final  String message;
 final  Map<String, Object?>? _params;
@override Map<String, Object?>? get params {
  final value = _params;
  if (value == null) return null;
  if (_params is EqualUnmodifiableMapView) return _params;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of LogRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogRecordCopyWith<_LogRecord> get copyWith => __$LogRecordCopyWithImpl<_LogRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogRecord&&(identical(other.caller, caller) || other.caller == caller)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._params, _params));
}


@override
int get hashCode => Object.hash(runtimeType,caller,message,const DeepCollectionEquality().hash(_params));

@override
String toString() {
  return 'LogRecord(caller: $caller, message: $message, params: $params)';
}


}

/// @nodoc
abstract mixin class _$LogRecordCopyWith<$Res> implements $LogRecordCopyWith<$Res> {
  factory _$LogRecordCopyWith(_LogRecord value, $Res Function(_LogRecord) _then) = __$LogRecordCopyWithImpl;
@override @useResult
$Res call({
 String caller, String message, Map<String, Object?>? params
});




}
/// @nodoc
class __$LogRecordCopyWithImpl<$Res>
    implements _$LogRecordCopyWith<$Res> {
  __$LogRecordCopyWithImpl(this._self, this._then);

  final _LogRecord _self;
  final $Res Function(_LogRecord) _then;

/// Create a copy of LogRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? caller = null,Object? message = null,Object? params = freezed,}) {
  return _then(_LogRecord(
caller: null == caller ? _self.caller : caller // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,params: freezed == params ? _self._params : params // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}


}

// dart format on
