import 'dart:async';

class LoginValidation {
  final validateEmailField = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      (email.contains('@') && email.contains('.com'))
          ? sink.add(email)
          : sink.addError('Enter a valid email.');
    },
  );

  final validatePasswordField = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      (password.length >= 5)
          ? sink.add(password)
          : sink.addError('Password must be at least 5 characters.');
    },
  );
}
