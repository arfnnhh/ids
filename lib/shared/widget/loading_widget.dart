import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final String? message;
  final Color? color;
  final double? size;

  const Loading({
    Key? key,
    this.message,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: color ?? Theme.of(context).primaryColor,
            strokeWidth: size ?? 4.0,
          ),
          if (message != null) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium,
            ),
          ],
        ],
      ),
    );
  }
}
