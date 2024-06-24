import 'package:flutter/material.dart';
import 'package:ewallet_psytech/components/rounded_button.dart';
import 'package:ewallet_psytech/components/rounded_text_form_field.dart';
import 'package:ewallet_psytech/screens/home_screen.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

class LoginScreen extends StatelessWidget {
  static const route = '/login';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                right: -20,
                child: Image.asset(
                  'assets/images/deco_4.png',
                  width: size.width * 0.5,
                ),
              ),
              Positioned(
                bottom: -20,
                left: 10,
                child: Image.asset(
                  'assets/images/deco_5.png',
                  width: size.width * 0.4,
                ),
              ),
              Positioned(
                bottom: size.height * 0.4,
                child: Image.asset(
                  'assets/images/person_2.png',
                  width: size.width * 0.85,
                ),
              ),
              Positioned(
                bottom: size.height * 0.05,
                child: Form(
                  child: Column(
                    children: [
                      RoundedTextFormField(
                        hintText: 'Email',
                        prefixIcon: Icons.email,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      RoundedTextFormField(
                        hintText: 'Password',
                        obscureText: true,
                        prefixIcon: Icons.lock,
                        suffixIcon: Icons.visibility,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      RoundedButton(
                        title: 'Login',
                        press: () {
                          ProgressDialog pd = ProgressDialog(context: context);
                          pd.show(
                            msg: 'Logging in..',
                          );
                          Future.delayed(Duration(seconds: 3)).then((value) {
                            pd.show().then((value) => Navigator.of(context)
                                .pushNamed(HomeScreen.route));
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
