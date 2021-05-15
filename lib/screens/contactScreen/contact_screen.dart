import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:up2us/models/events.dart';
import '../widgets/home_app_bar.dart';
import 'event_overview_card.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = '/contactScreen';

  final List<Events> _events = [
    Events(
      eid: '1',
      title: 'First Party',
      subtitle: 'Colleage get togatter',
      host: 'Abdul Haseeb',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '2',
      title: 'Permostional party',
      subtitle: 'Family get togatter',
      host: 'Abdul Rehman',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '3',
      title: 'Marriage',
      subtitle: 'get togatter',
      host: 'Abdulllah',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '4',
      title: 'onOther Party',
      subtitle: 'Colleage get togatter',
      host: 'Abdul Hai',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '5',
      title: 'Friends Party',
      subtitle: 'get togatter',
      host: 'Abdul Basit',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '6',
      title: 'Night Party',
      subtitle: 'Friends get togatter with late night pasty',
      host: 'Abdul Razaq',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '7',
      title: 'Marriage',
      subtitle: 'get togatter',
      host: 'Abdulllah',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '8',
      title: 'onOther Party',
      subtitle: 'Colleage get togatter',
      host: 'Abdul Hai',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '9',
      title: 'Friends Party',
      subtitle: 'get togatter',
      host: 'Abdul Basit',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
    Events(
      eid: '10',
      title: 'Night Party',
      subtitle: 'Friends get togatter with late night pasty',
      host: 'Abdul Razaq',
      startingDate: '03-05-2021',
      eventDate: '03-06-2021',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeAppBar(),
          const Text(
            'Event',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
          Flexible(
            child: GridView.builder(
              itemCount: _events.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return EventOverviewCard(
                  events: _events[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
