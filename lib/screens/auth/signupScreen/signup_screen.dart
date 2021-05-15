import 'package:flutter/material.dart';
import 'package:up2us/copyrights.dart';
import '../widgets/show_app_name.dart';
import '../widgets/valide_email_text_form_field.dart';
import '../widgets/valide_name_text_form_field.dart';
import '../widgets/valide_password_text_form_field.dart';
import '../widgets/valide_phone_number_text_form_field.dart';
import 'widgets/go_to_signin.dart';
import 'widgets/signup_button.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/SignupScreen';
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
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
              ValideNameTextFormField(name: _name),
              ValidePhoneNumberTextFormField(phoneNumber: _phone),
              ValideEmailTextFormField(email: _email),
              ValidePasswordTextFormField(password: _password),
              SignupButton(
                name: _name,
                phone: _phone,
                email: _email,
                password: _password,
                globalKey: _globalKey,
              ),
              const Spacer(),
              GoToSignin(),
              Copyrights(),
            ],
          ),
        ),
      ),
    );
  }
}
