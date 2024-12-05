import 'package:flutter/material.dart';

class ListContentWidget extends StatelessWidget {
  final Map<String, dynamic> picture;
  final VoidCallback onTap;

  const ListContentWidget({Key? key, required this.picture, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(picture['download_url']),
      title: Text(picture['author']),
      onTap: onTap,
    );
  }
}
