import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({Key? key, required this.text}) : super(key: key);
  final text;
  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey, fontSize: 13),
          labelText: widget.text,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
