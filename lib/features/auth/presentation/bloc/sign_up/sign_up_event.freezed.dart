// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent()';
}


}

/// @nodoc
class $SignUpEventCopyWith<$Res>  {
$SignUpEventCopyWith(SignUpEvent _, $Res Function(SignUpEvent) __);
}


/// Adds pattern-matching-related methods to [SignUpEvent].
extension SignUpEventPatterns on SignUpEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignUpNameChanged value)?  nameChanged,TResult Function( SignUpEmailChanged value)?  emailChanged,TResult Function( SignUpPasswordChanged value)?  passwordChanged,TResult Function( SignUpConfirmPasswordChanged value)?  confirmPasswordChanged,TResult Function( SignUpPasswordVisibilityToggled value)?  passwordVisibilityToggled,TResult Function( SignUpSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignUpNameChanged() when nameChanged != null:
return nameChanged(_that);case SignUpEmailChanged() when emailChanged != null:
return emailChanged(_that);case SignUpPasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case SignUpConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case SignUpPasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled(_that);case SignUpSubmitted() when submitted != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignUpNameChanged value)  nameChanged,required TResult Function( SignUpEmailChanged value)  emailChanged,required TResult Function( SignUpPasswordChanged value)  passwordChanged,required TResult Function( SignUpConfirmPasswordChanged value)  confirmPasswordChanged,required TResult Function( SignUpPasswordVisibilityToggled value)  passwordVisibilityToggled,required TResult Function( SignUpSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case SignUpNameChanged():
return nameChanged(_that);case SignUpEmailChanged():
return emailChanged(_that);case SignUpPasswordChanged():
return passwordChanged(_that);case SignUpConfirmPasswordChanged():
return confirmPasswordChanged(_that);case SignUpPasswordVisibilityToggled():
return passwordVisibilityToggled(_that);case SignUpSubmitted():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignUpNameChanged value)?  nameChanged,TResult? Function( SignUpEmailChanged value)?  emailChanged,TResult? Function( SignUpPasswordChanged value)?  passwordChanged,TResult? Function( SignUpConfirmPasswordChanged value)?  confirmPasswordChanged,TResult? Function( SignUpPasswordVisibilityToggled value)?  passwordVisibilityToggled,TResult? Function( SignUpSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case SignUpNameChanged() when nameChanged != null:
return nameChanged(_that);case SignUpEmailChanged() when emailChanged != null:
return emailChanged(_that);case SignUpPasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case SignUpConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case SignUpPasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled(_that);case SignUpSubmitted() when submitted != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( String email)?  emailChanged,TResult Function( String password)?  passwordChanged,TResult Function( String confirmPassword)?  confirmPasswordChanged,TResult Function()?  passwordVisibilityToggled,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignUpNameChanged() when nameChanged != null:
return nameChanged(_that.name);case SignUpEmailChanged() when emailChanged != null:
return emailChanged(_that.email);case SignUpPasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case SignUpConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.confirmPassword);case SignUpPasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled();case SignUpSubmitted() when submitted != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( String email)  emailChanged,required TResult Function( String password)  passwordChanged,required TResult Function( String confirmPassword)  confirmPasswordChanged,required TResult Function()  passwordVisibilityToggled,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case SignUpNameChanged():
return nameChanged(_that.name);case SignUpEmailChanged():
return emailChanged(_that.email);case SignUpPasswordChanged():
return passwordChanged(_that.password);case SignUpConfirmPasswordChanged():
return confirmPasswordChanged(_that.confirmPassword);case SignUpPasswordVisibilityToggled():
return passwordVisibilityToggled();case SignUpSubmitted():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( String email)?  emailChanged,TResult? Function( String password)?  passwordChanged,TResult? Function( String confirmPassword)?  confirmPasswordChanged,TResult? Function()?  passwordVisibilityToggled,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case SignUpNameChanged() when nameChanged != null:
return nameChanged(_that.name);case SignUpEmailChanged() when emailChanged != null:
return emailChanged(_that.email);case SignUpPasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case SignUpConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.confirmPassword);case SignUpPasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled();case SignUpSubmitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class SignUpNameChanged implements SignUpEvent {
  const SignUpNameChanged(this.name);
  

 final  String name;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpNameChangedCopyWith<SignUpNameChanged> get copyWith => _$SignUpNameChangedCopyWithImpl<SignUpNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpNameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SignUpEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $SignUpNameChangedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpNameChangedCopyWith(SignUpNameChanged value, $Res Function(SignUpNameChanged) _then) = _$SignUpNameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$SignUpNameChangedCopyWithImpl<$Res>
    implements $SignUpNameChangedCopyWith<$Res> {
  _$SignUpNameChangedCopyWithImpl(this._self, this._then);

  final SignUpNameChanged _self;
  final $Res Function(SignUpNameChanged) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(SignUpNameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpEmailChanged implements SignUpEvent {
  const SignUpEmailChanged(this.email);
  

 final  String email;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpEmailChangedCopyWith<SignUpEmailChanged> get copyWith => _$SignUpEmailChangedCopyWithImpl<SignUpEmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'SignUpEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $SignUpEmailChangedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpEmailChangedCopyWith(SignUpEmailChanged value, $Res Function(SignUpEmailChanged) _then) = _$SignUpEmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$SignUpEmailChangedCopyWithImpl<$Res>
    implements $SignUpEmailChangedCopyWith<$Res> {
  _$SignUpEmailChangedCopyWithImpl(this._self, this._then);

  final SignUpEmailChanged _self;
  final $Res Function(SignUpEmailChanged) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(SignUpEmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpPasswordChanged implements SignUpEvent {
  const SignUpPasswordChanged(this.password);
  

 final  String password;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpPasswordChangedCopyWith<SignUpPasswordChanged> get copyWith => _$SignUpPasswordChangedCopyWithImpl<SignUpPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpPasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'SignUpEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $SignUpPasswordChangedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpPasswordChangedCopyWith(SignUpPasswordChanged value, $Res Function(SignUpPasswordChanged) _then) = _$SignUpPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$SignUpPasswordChangedCopyWithImpl<$Res>
    implements $SignUpPasswordChangedCopyWith<$Res> {
  _$SignUpPasswordChangedCopyWithImpl(this._self, this._then);

  final SignUpPasswordChanged _self;
  final $Res Function(SignUpPasswordChanged) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(SignUpPasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpConfirmPasswordChanged implements SignUpEvent {
  const SignUpConfirmPasswordChanged(this.confirmPassword);
  

 final  String confirmPassword;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpConfirmPasswordChangedCopyWith<SignUpConfirmPasswordChanged> get copyWith => _$SignUpConfirmPasswordChangedCopyWithImpl<SignUpConfirmPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpConfirmPasswordChanged&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode => Object.hash(runtimeType,confirmPassword);

@override
String toString() {
  return 'SignUpEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $SignUpConfirmPasswordChangedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpConfirmPasswordChangedCopyWith(SignUpConfirmPasswordChanged value, $Res Function(SignUpConfirmPasswordChanged) _then) = _$SignUpConfirmPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String confirmPassword
});




}
/// @nodoc
class _$SignUpConfirmPasswordChangedCopyWithImpl<$Res>
    implements $SignUpConfirmPasswordChangedCopyWith<$Res> {
  _$SignUpConfirmPasswordChangedCopyWithImpl(this._self, this._then);

  final SignUpConfirmPasswordChanged _self;
  final $Res Function(SignUpConfirmPasswordChanged) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmPassword = null,}) {
  return _then(SignUpConfirmPasswordChanged(
null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpPasswordVisibilityToggled implements SignUpEvent {
  const SignUpPasswordVisibilityToggled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpPasswordVisibilityToggled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent.passwordVisibilityToggled()';
}


}




/// @nodoc


class SignUpSubmitted implements SignUpEvent {
  const SignUpSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent.submitted()';
}


}




// dart format on
