import 'package:flutter/material.dart';

import '../../widgets/buttombar.dart';

class AjustePage extends StatelessWidget {
  const AjustePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        width: double.infinity,
        color: Colors.black,
      ),
      bottomNavigationBar: const Buttombar(),
    );
  }
}
