// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HttpResponse {

 int? get statusCode; String? get statusMessage; dynamic get data; Map<String, dynamic>? get extra; Map<String, List<String>>? get headers;
/// Create a copy of HttpResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HttpResponseCopyWith<HttpResponse> get copyWith => _$HttpResponseCopyWithImpl<HttpResponse>(this as HttpResponse, _$identity);

  /// Serializes this HttpResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HttpResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.extra, extra)&&const DeepCollectionEquality().equals(other.headers, headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(extra),const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'HttpResponse(statusCode: $statusCode, statusMessage: $statusMessage, data: $data, extra: $extra, headers: $headers)';
}


}

/// @nodoc
abstract mixin class $HttpResponseCopyWith<$Res>  {
  factory $HttpResponseCopyWith(HttpResponse value, $Res Function(HttpResponse) _then) = _$HttpResponseCopyWithImpl;
@useResult
$Res call({
 int? statusCode, String? statusMessage, dynamic data, Map<String, dynamic>? extra, Map<String, List<String>>? headers
});




}
/// @nodoc
class _$HttpResponseCopyWithImpl<$Res>
    implements $HttpResponseCopyWith<$Res> {
  _$HttpResponseCopyWithImpl(this._self, this._then);

  final HttpResponse _self;
  final $Res Function(HttpResponse) _then;

/// Create a copy of HttpResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? statusMessage = freezed,Object? data = freezed,Object? extra = freezed,Object? headers = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,extra: freezed == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HttpResponse].
extension HttpResponsePatterns on HttpResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HttpResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HttpResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HttpResponse value)  $default,){
final _that = this;
switch (_that) {
case _HttpResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HttpResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HttpResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? statusCode,  String? statusMessage,  dynamic data,  Map<String, dynamic>? extra,  Map<String, List<String>>? headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HttpResponse() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.extra,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? statusCode,  String? statusMessage,  dynamic data,  Map<String, dynamic>? extra,  Map<String, List<String>>? headers)  $default,) {final _that = this;
switch (_that) {
case _HttpResponse():
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.extra,_that.headers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? statusCode,  String? statusMessage,  dynamic data,  Map<String, dynamic>? extra,  Map<String, List<String>>? headers)?  $default,) {final _that = this;
switch (_that) {
case _HttpResponse() when $default != null:
return $default(_that.statusCode,_that.statusMessage,_that.data,_that.extra,_that.headers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HttpResponse implements HttpResponse {
  const _HttpResponse({this.statusCode, this.statusMessage, this.data, final  Map<String, dynamic>? extra, final  Map<String, List<String>>? headers}): _extra = extra,_headers = headers;
  factory _HttpResponse.fromJson(Map<String, dynamic> json) => _$HttpResponseFromJson(json);

@override final  int? statusCode;
@override final  String? statusMessage;
@override final  dynamic data;
 final  Map<String, dynamic>? _extra;
@override Map<String, dynamic>? get extra {
  final value = _extra;
  if (value == null) return null;
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, List<String>>? _headers;
@override Map<String, List<String>>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of HttpResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HttpResponseCopyWith<_HttpResponse> get copyWith => __$HttpResponseCopyWithImpl<_HttpResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HttpResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HttpResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other._extra, _extra)&&const DeepCollectionEquality().equals(other._headers, _headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,statusMessage,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(_extra),const DeepCollectionEquality().hash(_headers));

@override
String toString() {
  return 'HttpResponse(statusCode: $statusCode, statusMessage: $statusMessage, data: $data, extra: $extra, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$HttpResponseCopyWith<$Res> implements $HttpResponseCopyWith<$Res> {
  factory _$HttpResponseCopyWith(_HttpResponse value, $Res Function(_HttpResponse) _then) = __$HttpResponseCopyWithImpl;
@override @useResult
$Res call({
 int? statusCode, String? statusMessage, dynamic data, Map<String, dynamic>? extra, Map<String, List<String>>? headers
});




}
/// @nodoc
class __$HttpResponseCopyWithImpl<$Res>
    implements _$HttpResponseCopyWith<$Res> {
  __$HttpResponseCopyWithImpl(this._self, this._then);

  final _HttpResponse _self;
  final $Res Function(_HttpResponse) _then;

/// Create a copy of HttpResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? statusMessage = freezed,Object? data = freezed,Object? extra = freezed,Object? headers = freezed,}) {
  return _then(_HttpResponse(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,extra: freezed == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}


}

// dart format on
