// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'container_historic.dart';
import 'text_fild_spending.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const Text(
              "Registre a Despesa",
              style: TextStyle(fontSize: 25),
            ),
            TextFildSpending(
              textLabel: "Valor",
              textHint: "R\$0.00",
              isNumber: true,
              
            ),
            TextFildSpending(
              textLabel: "Produto",
              textHint: "",
              isNumber: false,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Salvar"),
            ),
            const SizedBox(
              height: 25,
            ),
            const ContainerHistoric(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
