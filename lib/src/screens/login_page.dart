import 'package:flutter/material.dart';
import 'package:provider_login/src/widgets/email_field.dart';
import 'package:provider_login/src/widgets/login_image.dart';
import 'package:provider_login/src/widgets/password_field.dart';
import 'package:provider_login/src/widgets/submit_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 30),
          child: Column(
            children: <Widget>[
              loginImage(),
              emailField(context),
              passwordField(context),
              submitButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
