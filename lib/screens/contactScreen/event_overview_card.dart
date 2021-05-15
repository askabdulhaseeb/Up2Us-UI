import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:up2us/config/app_images.dart';
import 'package:up2us/models/events.dart';
import 'package:up2us/screens/eventDeatilScreen/event_detail_screen.dart';

class EventOverviewCard extends StatelessWidget {
  final Events _events;
  static const double _radius = 14;
  const EventOverviewCard({
    Events events,
    Key key,
  })  : _events = events,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    const boldTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
    );
    return Hero(
      tag: _events.eid,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventDetailScreen(event: _events),
            ),
          );
        },
        child: Container(
          height: 100,
          width: 100,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(_radius),
            image: const DecorationImage(
              image: NetworkImage(defaultNetworkURL),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(_radius),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _events.title,
                      overflow: TextOverflow.ellipsis,
                      style: boldTextStyle,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _events.subtitle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Host: ${_events.host}',
                      overflow: TextOverflow.ellipsis,
                      style: boldTextStyle,
                    ),
                    Text(_events.startingDate),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
