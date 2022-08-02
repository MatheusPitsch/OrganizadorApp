// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
              "Digite o Gasto",
              style: TextStyle(fontSize: 25),
            ),
            TextFildSpending(
              textLabel: "Valor",
              textHint: "R\$0.00",
            ),
            TextFildSpending(
              textLabel: "Produto",
              textHint: "",
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
            Container(
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
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class TextFildSpending extends StatelessWidget {
  String textLabel;
  String textHint;

  TextFildSpending({
    Key? key,
    required this.textLabel,
    required this.textHint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
        child: TextField(
          decoration: InputDecoration(
            labelText: textLabel,
            hintText: textHint,
            border: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
