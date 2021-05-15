import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtherSigninMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              maxRadius: 20,
              minRadius: 16,
              child: Icon(
                FontAwesomeIcons.google,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              maxRadius: 20,
              minRadius: 16,
              child: Icon(
                FontAwesomeIcons.facebookF,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              maxRadius: 20,
              minRadius: 16,
              child: Icon(
                FontAwesomeIcons.linkedinIn,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
