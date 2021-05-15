import 'package:flutter/material.dart';
import '../../../contactScreen/contact_screen.dart';

class SigninButton extends StatelessWidget {
  final TextEditingController _email, _password;
  final GlobalKey<FormState> _globalKey;
  const SigninButton({
    @required TextEditingController email,
    @required TextEditingController password,
    @required GlobalKey<FormState> globalKey,
  })  : _email = email,
        _password = password,
        _globalKey = globalKey;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).primaryColor,
        ),
      ),
      onPressed: () {
        //TODO: Auth remaining
        if (_globalKey.currentState.validate()) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            ContactScreen.routeName,
            (route) => false,
          );
        }
      },
      child: const Text('Sign in'),
    );
  }
}
