import 'package:flutter/material.dart';
import 'package:ewallet_psytech/screens/home_screen.dart';
import 'package:ewallet_psytech/screens/logged_screen.dart';
import 'package:ewallet_psytech/screens/login_screen.dart';
import 'package:ewallet_psytech/screens/signup_screen.dart';
import 'package:ewallet_psytech/screens/transactions_screen.dart';
import 'package:ewallet_psytech/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: '',
      ),
      routes: {
        HomeScreen.route: (_) => HomeScreen(),
        WelcomeScreen.route: (_) => WelcomeScreen(),
        LoggedScreen.route: (_) => LoggedScreen(),
        LoginScreen.route: (_) => LoginScreen(),
        TransactionsScreen.route: (_) => TransactionsScreen(),
        SignupScreen.route: (_) => SignupScreen(),
      },
    );
  }
}
