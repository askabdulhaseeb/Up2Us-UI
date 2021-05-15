import 'package:flutter/material.dart';
import '../../signinScreen/signin_screen.dart';

class SignupButton extends StatelessWidget {
  final TextEditingController _name, _phone, _email, _password;
  final GlobalKey<FormState> _globalKey;
  const SignupButton({
    @required TextEditingController name,
    @required TextEditingController phone,
    @required TextEditingController email,
    @required TextEditingController password,
    @required GlobalKey<FormState> globalKey,
  })  : _name = name,
        _phone = phone,
        _email = email,
        _password = password,
        _globalKey = globalKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).primaryColor,
          ),
        ),
        onPressed: () {
          if (_globalKey.currentState.validate()) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              SigninScreen.routeName,
              (route) => false,
            );
          }
        },
        child: const Text('Sign up'),
      ),
    );
  }
}
