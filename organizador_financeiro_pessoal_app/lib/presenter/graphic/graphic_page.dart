import 'package:flutter/material.dart';

class GrapichPage extends StatefulWidget {
  const GrapichPage({Key? key}) : super(key: key);

  @override
  State<GrapichPage> createState() => _GrapichPageState();
}

class _GrapichPageState extends State<GrapichPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
