import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'OR',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
