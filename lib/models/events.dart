import 'package:flutter/foundation.dart';
import 'package:up2us/models/my_users.dart';
import 'package:up2us/models/venue.dart';

class Events {
  final String eid;
  final String title;
  final String subtitle;
  final Venue venue;
  final String host;
  final List<MyUsers> guest;
  final String startingDate;
  final String eventDate;
  final String imageURL;

  Events({
    @required this.eid,
    @required this.title,
    @required this.subtitle,
    this.venue,
    @required this.host,
    this.guest,
    @required this.startingDate,
    @required this.eventDate,
    this.imageURL,
  });
}
