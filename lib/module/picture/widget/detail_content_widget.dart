import 'package:flutter/material.dart';

class DetailContentWidget extends StatelessWidget {
  final Map<String, dynamic> detail;

  const DetailContentWidget({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(detail['download_url']),
        SizedBox(height: 20),
        Text(
          'Author: ${detail['author']}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
      ],
    );
  }
}
