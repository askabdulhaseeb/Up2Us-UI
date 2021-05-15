import 'package:flutter/material.dart';
import 'package:up2us/copyrights.dart';

class AddNewEvent extends StatelessWidget {
  static const routeName = '/AddNewEvent';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('New Event'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Here are the Question you have to answer'),
              const SizedBox(height: 10),
              const Center(child: Text('Section 1')),
              const Text('1. Everyday Dining: Convenience and price'),
              const Text(
                  '2. Business Meal: Close to the office and low noise level'),
              const Text(
                  '3. Date Night: Trying a new restaurant and/or new cuisine'),
              const Text(
                  '4. Friends’ Get-Together: Convenient location to all and fun ambiance'),
              const Text(
                  '5. Special Occasion: Food quality, service and ambiance'),
              const Text('6. No. of pax'),
              const SizedBox(height: 10),
              const Center(child: Text('Section 2')),
              const Text('1. Budget'),
              const SizedBox(height: 10),
              const Center(child: Text('Section 3')),
              const Text('1. Location'),
              const SizedBox(height: 10),
              const Center(child: Text('Section 4')),
              const Text(
                  '1. Add Friends from Contacts which have account on this app'),
              const Spacer(),
              Copyrights(),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Create Event'),
                ),
              )
            ],
          ),
        ));
  }
}
