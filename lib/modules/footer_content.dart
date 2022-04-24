import 'package:flutter/material.dart';

class FooterContent extends StatefulWidget {
  const FooterContent({Key? key, required this.text}) : super(key: key);
  final text;
  @override
  State<FooterContent> createState() => _FooterContentState();
}

class _FooterContentState extends State<FooterContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 7),
      child: Text(
        widget.text,
        style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
      ),
    );
  }
}
