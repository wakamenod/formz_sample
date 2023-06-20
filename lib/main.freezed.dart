// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SampleForm {
  UserNameInput get userName => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleFormCopyWith<SampleForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleFormCopyWith<$Res> {
  factory $SampleFormCopyWith(
          SampleForm value, $Res Function(SampleForm) then) =
      _$SampleFormCopyWithImpl<$Res, SampleForm>;
  @useResult
  $Res call({UserNameInput userName, PasswordInput password, bool isValid});
}

/// @nodoc
class _$SampleFormCopyWithImpl<$Res, $Val extends SampleForm>
    implements $SampleFormCopyWith<$Res> {
  _$SampleFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserNameInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SampleFormCopyWith<$Res>
    implements $SampleFormCopyWith<$Res> {
  factory _$$_SampleFormCopyWith(
          _$_SampleForm value, $Res Function(_$_SampleForm) then) =
      __$$_SampleFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserNameInput userName, PasswordInput password, bool isValid});
}

/// @nodoc
class __$$_SampleFormCopyWithImpl<$Res>
    extends _$SampleFormCopyWithImpl<$Res, _$_SampleForm>
    implements _$$_SampleFormCopyWith<$Res> {
  __$$_SampleFormCopyWithImpl(
      _$_SampleForm _value, $Res Function(_$_SampleForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? isValid = null,
  }) {
    return _then(_$_SampleForm(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserNameInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SampleForm implements _SampleForm {
  _$_SampleForm(
      {required this.userName, required this.password, required this.isValid});

  @override
  final UserNameInput userName;
  @override
  final PasswordInput password;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'SampleForm(userName: $userName, password: $password, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SampleForm &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SampleFormCopyWith<_$_SampleForm> get copyWith =>
      __$$_SampleFormCopyWithImpl<_$_SampleForm>(this, _$identity);
}

abstract class _SampleForm implements SampleForm {
  factory _SampleForm(
      {required final UserNameInput userName,
      required final PasswordInput password,
      required final bool isValid}) = _$_SampleForm;

  @override
  UserNameInput get userName;
  @override
  PasswordInput get password;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_SampleFormCopyWith<_$_SampleForm> get copyWith =>
      throw _privateConstructorUsedError;
}
