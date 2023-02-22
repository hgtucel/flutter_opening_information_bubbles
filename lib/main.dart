import 'package:flutter/material.dart';
import 'package:flutter_opening_information_bubbles/pages/home_page.dart';
import 'package:showcaseview/showcaseview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShowCaseWidget(builder: Builder(builder: (context) => const HomePage()),onFinish: () {
        print("Finish");
        //With sharedpreferences you can record that the showcase is shown to the user.
      },),
    );
  }
}