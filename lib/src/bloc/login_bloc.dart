import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'login_validators.dart';

class LoginBloc with LoginValidation {
  // Behavior Subject Stream Controllers
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  // Streams
  Stream<String> get email => _email.stream.transform(validateEmailField);
  Stream<String> get password =>
      _password.stream.transform(validatePasswordField);

  Stream<bool> get submitButtonIsValid => Observable.combineLatest2(
      email, password, (emailValue, passwordValue) => true);

  // Monitor Any Changes in the Text Fields
  Function(String) get emailChanges => _email.sink.add;
  Function(String) get passwordChanges => _password.sink.add;

  submitLogin() {
    final validEmail = _email.value;
    final validPassword = _password.value;

    print('Email: $validEmail');
    print('Password: $validPassword');
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
