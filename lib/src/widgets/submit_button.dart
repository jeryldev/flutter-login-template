import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget submitButton(BuildContext context) {
  final loginBloc = Provider.of(context);

  return StreamBuilder<Object>(
      stream: loginBloc.submitButtonIsValid,
      builder: (context, snapshot) {
        return RaisedButton(
          onPressed: snapshot.hasData ? loginBloc.submitLogin : null,
          child: Text('Login'),
          color: Colors.green,
          textColor: Colors.white,
          disabledColor: Colors.white,
          disabledTextColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        );
      });
}
