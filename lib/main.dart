import 'package:flutter/material.dart';
import 'package:up2us/screens/addNewEvent/add_new_event.dart';
import 'package:up2us/screens/contactScreen/contact_screen.dart';
import 'screens/auth/signinScreen/signin_screen.dart';
import 'screens/auth/signupScreen/signup_screen.dart';
import 'screens/splashScreen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

// App Developer
// Name: Abdul Haseeb
// Whatsapp: +923451021122

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '''Up2Us - Let's select eatables''',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        scaffoldBackgroundColor: const Color(0xFF090042),
        primaryColor: Colors.orange,
        primaryColorLight: const Color(0xFFFFE0B2),
        primaryColorDark: const Color(0xFFFFE0B2),
        primarySwatch: Colors.orange,
        accentColor: Colors.orange,
        primaryColorBrightness: Brightness.dark,
      ),
      home: SplashScreen(),
      // routes for all the screens
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
        SigninScreen.routeName: (ctx) => SigninScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
        ContactScreen.routeName: (ctx) => ContactScreen(),
        AddNewEvent.routeName: (ctx) => AddNewEvent(),
      },
    );
  }
}
