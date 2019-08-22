import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget passwordField(BuildContext context) {
  final loginBloc = Provider.of(context);
  return StreamBuilder<Object>(
    stream: loginBloc.password,
    builder: (context, snapshot) {
      return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.error,
          ),
          onChanged: loginBloc.passwordChanges,
        ),
      );
    },
  );
}
