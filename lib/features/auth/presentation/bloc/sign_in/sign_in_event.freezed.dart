// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent()';
}


}

/// @nodoc
class $SignInEventCopyWith<$Res>  {
$SignInEventCopyWith(SignInEvent _, $Res Function(SignInEvent) __);
}


/// Adds pattern-matching-related methods to [SignInEvent].
extension SignInEventPatterns on SignInEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignInEmailChanged value)?  emailChanged,TResult Function( SignInPasswordChanged value)?  passwordChanged,TResult Function( SignInPasswordVisibilityToggled value)?  passwordVisibilityToggled,TResult Function( SignInSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignInEmailChanged() when emailChanged != null:
return emailChanged(_that);case SignInPasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case SignInPasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled(_that);case SignInSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignInEmailChanged value)  emailChanged,required TResult Function( SignInPasswordChanged value)  passwordChanged,required TResult Function( SignInPasswordVisibilityToggled value)  passwordVisibilityToggled,required TResult Function( SignInSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case SignInEmailChanged():
return emailChanged(_that);case SignInPasswordChanged():
return passwordChanged(_that);case SignInPasswordVisibilityToggled():
return passwordVisibilityToggled(_that);case SignInSubmitted():
return submitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignInEmailChanged value)?  emailChanged,TResult? Function( SignInPasswordChanged value)?  passwordChanged,TResult? Function( SignInPasswordVisibilityToggled value)?  passwordVisibilityToggled,TResult? Function( SignInSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case SignInEmailChanged() when emailChanged != null:
return emailChanged(_that);case SignInPasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case SignInPasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled(_that);case SignInSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  emailChanged,TResult Function( String password)?  passwordChanged,TResult Function()?  passwordVisibilityToggled,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignInEmailChanged() when emailChanged != null:
return emailChanged(_that.email);case SignInPasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case SignInPasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled();case SignInSubmitted() when submitted != null:
return submitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  emailChanged,required TResult Function( String password)  passwordChanged,required TResult Function()  passwordVisibilityToggled,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case SignInEmailChanged():
return emailChanged(_that.email);case SignInPasswordChanged():
return passwordChanged(_that.password);case SignInPasswordVisibilityToggled():
return passwordVisibilityToggled();case SignInSubmitted():
return submitted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  emailChanged,TResult? Function( String password)?  passwordChanged,TResult? Function()?  passwordVisibilityToggled,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case SignInEmailChanged() when emailChanged != null:
return emailChanged(_that.email);case SignInPasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case SignInPasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled();case SignInSubmitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class SignInEmailChanged implements SignInEvent {
  const SignInEmailChanged(this.email);
  

 final  String email;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEmailChangedCopyWith<SignInEmailChanged> get copyWith => _$SignInEmailChangedCopyWithImpl<SignInEmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'SignInEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $SignInEmailChangedCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory $SignInEmailChangedCopyWith(SignInEmailChanged value, $Res Function(SignInEmailChanged) _then) = _$SignInEmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$SignInEmailChangedCopyWithImpl<$Res>
    implements $SignInEmailChangedCopyWith<$Res> {
  _$SignInEmailChangedCopyWithImpl(this._self, this._then);

  final SignInEmailChanged _self;
  final $Res Function(SignInEmailChanged) _then;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(SignInEmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignInPasswordChanged implements SignInEvent {
  const SignInPasswordChanged(this.password);
  

 final  String password;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInPasswordChangedCopyWith<SignInPasswordChanged> get copyWith => _$SignInPasswordChangedCopyWithImpl<SignInPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInPasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'SignInEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInPasswordChangedCopyWith<$Res> implements $SignInEventCopyWith<$Res> {
  factory $SignInPasswordChangedCopyWith(SignInPasswordChanged value, $Res Function(SignInPasswordChanged) _then) = _$SignInPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$SignInPasswordChangedCopyWithImpl<$Res>
    implements $SignInPasswordChangedCopyWith<$Res> {
  _$SignInPasswordChangedCopyWithImpl(this._self, this._then);

  final SignInPasswordChanged _self;
  final $Res Function(SignInPasswordChanged) _then;

/// Create a copy of SignInEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(SignInPasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignInPasswordVisibilityToggled implements SignInEvent {
  const SignInPasswordVisibilityToggled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInPasswordVisibilityToggled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent.passwordVisibilityToggled()';
}


}




/// @nodoc


class SignInSubmitted implements SignInEvent {
  const SignInSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignInEvent.submitted()';
}


}




// dart format on
