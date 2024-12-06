import 'package:flutter/material.dart';

class DetailContentWidget extends StatelessWidget {
  final String imageUrl;
  final String author;

  const DetailContentWidget({
    Key? key,
    required this.imageUrl,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
          height: 300,
          width: double.infinity,
        ),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Taken by : $author",
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF171B1E),
                    fontSize: 14,
                  ),
            )
          ),
      ],
    );
  }
}
