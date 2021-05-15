import 'package:flutter/material.dart';
import 'package:up2us/config/app_images.dart';
import 'package:up2us/copyrights.dart';
import 'package:up2us/models/events.dart';
import 'package:up2us/models/my_users.dart';

class EventDetailScreen extends StatelessWidget {
  static const routeName = '/EventDetailScreen';
  final Events event;
  const EventDetailScreen({
    @required this.event,
  });
  @override
  Widget build(BuildContext context) {
    final List<MyUsers> _users = [
      MyUsers(
        uid: 'username',
        displayName: 'Abdullah',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'Bilal Ahmed',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'Yasir Bilal',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'Asad Ullah',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'M. Hamza',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'Taimoor Khan',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'Abdul Haseeb',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'Rana M. Umar',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'M. Ahmad',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
      MyUsers(
        uid: 'username',
        displayName: 'M. Shakir',
        imageURL:
            'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          event.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: event.eid,
            child: Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: const DecorationImage(
                  image: NetworkImage(defaultNetworkURL),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.subtitle,
                ),
                const SizedBox(height: 10),
                const Text('Venue: peral Continental Hostel, Lahore, Paksitan'),
                Text(
                  'Starting Date: ${event.startingDate}',
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Host: ${event.host}',
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(_users[index].imageURL),
                    ),
                    title: Text(_users[index].displayName),
                    subtitle: Text(_users[index].uid),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.grey,
                ),
                itemCount: _users.length,
              ),
            ),
          ),
          Copyrights(),
        ],
      ),
    );
  }
}
