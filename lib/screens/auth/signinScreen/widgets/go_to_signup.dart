import 'package:flutter/material.dart';
import '../../signupScreen/signup_screen.dart';

class GoToSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Don’t have an account? ',
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SignupScreen.routeName);
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
