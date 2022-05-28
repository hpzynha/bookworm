import 'package:bookworm/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookwormApp());
}

class BookwormApp extends StatelessWidget {
  const BookwormApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookworm',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
