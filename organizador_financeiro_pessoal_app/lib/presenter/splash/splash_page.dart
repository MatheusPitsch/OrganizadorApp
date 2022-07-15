import 'package:flutter/material.dart';

import '../home/homePage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
    ).then(
      (value) => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        ),
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Organizando suas Finanças",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: <Color>[
                      Colors.pink,
                      Colors.deepOrange.shade400
                      //add more color here.
                    ],
                  ).createShader(
                    const Rect.fromLTWH(0.0, 0.0, 300.0, 100.0),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
