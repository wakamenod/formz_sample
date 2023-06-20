import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'main.g.dart';
part 'main.freezed.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sampleForm = ref.watch(sampleFormControllerProvider);

    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(labelText: 'ユーザー名'),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: ref
                      .read(sampleFormControllerProvider.notifier)
                      .onChangeUserName,
                ),
                if (sampleForm.userName.displayError != null)
                  Text(sampleForm.userName.displayError!.errorText,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      )),
                TextField(
                  decoration: const InputDecoration(labelText: 'パスワード'),
                  onChanged: ref
                      .read(sampleFormControllerProvider.notifier)
                      .onChangePassword,
                ),
                if (sampleForm.password.displayError != null)
                  Text(sampleForm.password.displayError?.errorText ?? '',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      )),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: sampleForm.isValid
                      ? ref.read(sampleFormControllerProvider.notifier).submit
                      : null,
                  child: const Text('送信'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ユーザー名入力用
class UserNameInput extends FormzInput<String, UserNameInputError> {
  const UserNameInput.pure() : super.pure('');
  const UserNameInput.dirty({String value = ''}) : super.dirty(value);

  @override
  UserNameInputError? validator(String value) {
    return value.isEmpty ? UserNameInputError.empty : null;
  }
}

// ユーザー名入力エラー用
enum UserNameInputError {
  empty(errorText: '未入力です');

  const UserNameInputError({required this.errorText});

  final String errorText;
}

// パスワード入力用
class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.length < 8) return PasswordInputError.tooShort;
    if (!value.contains(RegExp(r'[0-9]'))) {
      return PasswordInputError.noDigits;
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return PasswordInputError.noUppercase;
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return PasswordInputError.noLowercase;
    }
    return null;
  }
}

// パスワード入力エラー用
enum PasswordInputError {
  tooShort(errorText: '8文字以上入力して下さい'),
  noDigits(errorText: "数字が含まれていません"),
  noUppercase(errorText: "アルファベットの大文字が含まれていません"),
  noLowercase(errorText: "アルファベットの小文字が含まれていません");

  const PasswordInputError({required this.errorText});

  final String errorText;
}

@freezed
class SampleForm with _$SampleForm {
  factory SampleForm({
    required UserNameInput userName,
    required PasswordInput password,
    required bool isValid,
  }) = _SampleForm;
}

@riverpod
class SampleFormController extends _$SampleFormController {
  @override
  SampleForm build() {
    return SampleForm(
        userName: const UserNameInput.pure(),
        password: const PasswordInput.pure(),
        isValid: false);
  }

  void onChangeUserName(String value) {
    final userName = UserNameInput.dirty(value: value);
    state = state.copyWith(
        userName: userName,
        isValid: Formz.validate([
          userName,
          state.password,
        ]));
  }

  void onChangePassword(String value) {
    final password = PasswordInput.dirty(value: value);
    state = state.copyWith(
        password: password,
        isValid: Formz.validate([
          password,
          state.userName,
        ]));
  }

  Future<void> submit() async {
    if (!state.isValid) return;

    // submit処理...
  }
}
