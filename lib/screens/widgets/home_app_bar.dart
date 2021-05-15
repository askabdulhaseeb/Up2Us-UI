import 'package:flutter/material.dart';
import 'package:up2us/config/app_images.dart';
import 'package:up2us/screens/addNewEvent/add_new_event.dart';
import 'package:up2us/screens/widgets/user_circular_image.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _url = 'https://www.instagram.com/r_abdulhaseeb/';
    Future _launchURL() async => await canLaunch(_url)
        ? await launch(_url)
        : throw 'Could not launch $_url';
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              _launchURL();
            },
            child: const UserCircularImage(imageUrl: defaultUserImageURL),
          ),
          const SizedBox(width: 6),
          const Text(
            "Abdul Haseeb",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddNewEvent.routeName);
              })
        ],
      ),
    );
  }
}
