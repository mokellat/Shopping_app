import 'package:flutter/material.dart';

class ProfileItems extends StatefulWidget {
  const ProfileItems(
      {Key? key, required this.assetname, required this.title, this.substitle})
      : super(key: key);
  final assetname;
  final title;
  final substitle;
  @override
  State<ProfileItems> createState() => _ProfileItemsState();
}

class _ProfileItemsState extends State<ProfileItems> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        widget.assetname,
        width: 35,
        height: 35,
        color: Colors.blue[900],
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey[600],
        ),
      ),
      subtitle: widget.substitle != null
          ? Text(
              widget.substitle,
              style: TextStyle(
                fontSize: 12,
              ),
            )
          : null,
      trailing: Icon(Icons.chevron_right),
    );
  }
}
