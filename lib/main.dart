import 'package:book_generating/screens/create_book.dart';
import 'package:book_generating/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //hellooo worlddd
  //helloooo
  //helloooo
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen()
      // CreateBookScreen(),
    );
  }
}

