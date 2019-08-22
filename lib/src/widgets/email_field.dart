import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget emailField(BuildContext context) {
  final loginBloc = Provider.of(context);
  return StreamBuilder<Object>(
    stream: loginBloc.email,
    builder: (context, snapshot) {
      return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email Address',
            errorText: snapshot.error,
          ),
          onChanged: loginBloc.emailChanges,
        ),
      );
    },
  );
}
