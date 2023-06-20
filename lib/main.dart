import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                  },
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  onChanged: (value) {
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum UserNameInputError { empty }
enum PasswordInputError { tooShort, noUppercase, noLowercase }

// ユーザー名入力用
class UserNameInput extends FormzInput<String, UserNameInputError> {
  const UserNameInput.pure() : super.pure('');
  const UserNameInput.dirty({String value = ''}) : super.dirty(value);

  @override
  UserNameInputError? validator(String value) {
    return value.isEmpty ? UserNameInputError.empty : null;
  }
}

// パスワード入力用
class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.length < 8) return PasswordInputError.tooShort;
    if (!value.contains(RegExp(r'[A-Z]'))) return PasswordInputError.noUppercase;
    if (!value.contains(RegExp(r'[a-z]'))) return PasswordInputError.noLowercase;
    return null;
  }
}
