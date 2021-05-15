import 'package:flutter/material.dart';
import 'package:up2us/copyrights.dart';
import '../widgets/show_app_name.dart';
import '../widgets/valide_email_text_form_field.dart';
import '../widgets/valide_password_text_form_field.dart';
import 'widgets/forget_password.dart';
import 'widgets/go_to_signup.dart';
import 'widgets/other_signin_methods.dart';
import 'widgets/signin_button.dart';

class SigninScreen extends StatelessWidget {
  static const routeName = '/SigninScreen';
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              ShowAppName(),
              ValideEmailTextFormField(email: _email),
              ValidePasswordTextFormField(password: _password),
              const ForgetPassword(),
              SigninButton(
                email: _email,
                password: _password,
                globalKey: _globalKey,
              ),
              const Spacer(),
              OtherSigninMethods(),
              GoToSignup(),
              Copyrights(),
            ],
          ),
        ),
      ),
    );
  }
}
