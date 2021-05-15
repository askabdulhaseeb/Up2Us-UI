import 'package:flutter/material.dart';
import 'package:up2us/config/app_images.dart';

class UserCircularImage extends StatelessWidget {
  final String imageUrl;
  final double _radius;
  const UserCircularImage({
    @required this.imageUrl,
    double radius = 20,
  }) : _radius = radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: _radius,
      backgroundColor: Theme.of(context).iconTheme.color,
      child: CircleAvatar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        radius: _radius - 2,
        child: CircleAvatar(
          radius: _radius - 4,
          backgroundColor: Theme.of(context).iconTheme.color,
          backgroundImage: (imageUrl == null)
              ? const AssetImage(appLogo)
              : NetworkImage(imageUrl) as ImageProvider,
        ),
      ),
    );
  }
}
