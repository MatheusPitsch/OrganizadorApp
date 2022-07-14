import 'package:flutter/material.dart';

import 'presenter/splash/splash.dart';
import 'presenter/widgets/buttombar.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Organizador de Finanças",
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

//https://pub.dev/packages/bottom_navy_bar/example

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: const Buttombar(),
    );
  }
}
