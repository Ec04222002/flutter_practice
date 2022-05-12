import 'package:flutter/material.dart';
import 'package:p1/views/home.dart';

void main() => runApp(const MyApp());

//main app class is always stateless b/c the overall format of app is constant
//the only thing changing is the widget inside
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key); //use key for unique state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: const HomePage(),
    );
  }
}
