import 'package:flutter/material.dart';

class TextFildSpending extends StatefulWidget {
  String textLabel;
  String textHint;
  bool isNumber;

  TextFildSpending({
    Key? key,
    required this.textLabel,
    required this.textHint,
    required this.isNumber,
  }) : super(key: key);

  @override
  State<TextFildSpending> createState() => _TextFildSpendingState();
}

class _TextFildSpendingState extends State<TextFildSpending> {
  TextEditingController mycontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
        child: TextField(
          inputFormatters: [],
          keyboardType: widget.isNumber
              ? TextInputType.number
              : TextInputType.streetAddress,
          decoration: InputDecoration(
            labelText: widget.textLabel,
            hintText: widget.textHint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: const BorderSide(
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
