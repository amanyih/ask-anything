// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordForm {
  Name get name => throw _privateConstructorUsedError;
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordFormCopyWith<ChangePasswordForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordFormCopyWith<$Res> {
  factory $ChangePasswordFormCopyWith(
          ChangePasswordForm value, $Res Function(ChangePasswordForm) then) =
      _$ChangePasswordFormCopyWithImpl<$Res, ChangePasswordForm>;
  @useResult
  $Res call(
      {Name name,
      Password oldPassword,
      Password newPassword,
      Password confirmPassword});
}

/// @nodoc
class _$ChangePasswordFormCopyWithImpl<$Res, $Val extends ChangePasswordForm>
    implements $ChangePasswordFormCopyWith<$Res> {
  _$ChangePasswordFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordFormCopyWith<$Res>
    implements $ChangePasswordFormCopyWith<$Res> {
  factory _$$_ChangePasswordFormCopyWith(_$_ChangePasswordForm value,
          $Res Function(_$_ChangePasswordForm) then) =
      __$$_ChangePasswordFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name name,
      Password oldPassword,
      Password newPassword,
      Password confirmPassword});
}

/// @nodoc
class __$$_ChangePasswordFormCopyWithImpl<$Res>
    extends _$ChangePasswordFormCopyWithImpl<$Res, _$_ChangePasswordForm>
    implements _$$_ChangePasswordFormCopyWith<$Res> {
  __$$_ChangePasswordFormCopyWithImpl(
      _$_ChangePasswordForm _value, $Res Function(_$_ChangePasswordForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$_ChangePasswordForm(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordForm implements _ChangePasswordForm {
  _$_ChangePasswordForm(
      {required this.name,
      required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword});

  @override
  final Name name;
  @override
  final Password oldPassword;
  @override
  final Password newPassword;
  @override
  final Password confirmPassword;

  @override
  String toString() {
    return 'ChangePasswordForm(name: $name, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, oldPassword, newPassword, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordFormCopyWith<_$_ChangePasswordForm> get copyWith =>
      __$$_ChangePasswordFormCopyWithImpl<_$_ChangePasswordForm>(
          this, _$identity);
}

abstract class _ChangePasswordForm implements ChangePasswordForm {
  factory _ChangePasswordForm(
      {required final Name name,
      required final Password oldPassword,
      required final Password newPassword,
      required final Password confirmPassword}) = _$_ChangePasswordForm;

  @override
  Name get name;
  @override
  Password get oldPassword;
  @override
  Password get newPassword;
  @override
  Password get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordFormCopyWith<_$_ChangePasswordForm> get copyWith =>
      throw _privateConstructorUsedError;
}
