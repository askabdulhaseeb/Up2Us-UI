import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Copyrights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _url = 'https://www.instagram.com/r_abdulhaseeb/';
    Future _launchURL() async => await canLaunch(_url)
        ? await launch(_url)
        : throw 'Could not launch $_url';
    return GestureDetector(
      onTap: () {
        _launchURL();
      },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              FontAwesomeIcons.copyright,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 4),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rana Abdul Haseeb',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const Text(
                      ' has the copyrights',
                    ),
                  ],
                ),
                const Text('Copyrights will be transfree after payment'),
                const SizedBox(height: 4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
