import 'package:flutter/material.dart';

class ContainerHistoric extends StatelessWidget {
  const ContainerHistoric({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey,
            spreadRadius: 5,
            offset: Offset(5, 8),
          ),
        ],
      ),
    );
  }
}
