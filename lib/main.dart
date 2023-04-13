import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/provider/multi_provider.dart';
//import 'package:provider_state_management/screens/count_example.dart';
import 'package:provider_state_management/screens/multi_provider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MultiProviderClass(),
        ),
        ChangeNotifierProvider(
          create: (v) => CountProvider(),
        )
      ],
      //this is single provider.
      // ChangeNotifierProvider(
      // create: (context) => CountProvider(),
      child: MaterialApp(
        title: 'Provider State Management',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
          // primaryColorDark:
        ),
        debugShowCheckedModeBanner: false,
        home: const MultiProviderScreen(),
      ),
    );
  }
}
