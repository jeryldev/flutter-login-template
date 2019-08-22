import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_login/src/bloc/login_bloc.dart';
import 'package:provider_login/src/screens/login_page.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Login',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.white,
      ),
      home: MultiProvider(
        providers: [
          Provider<dynamic>.value(
            value: LoginBloc(),
          ),
        ],
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: <Color>[
                  Colors.amber[800],
                  Colors.amber[700],
                  Colors.amber[600],
                  Colors.amber[400],
                ],
                stops: [0.1, 0.5, 0.7, 0.9],
              ),
            ),
            child: LoginPage(),
          ),
        ),
      ),
    );
  }
}
