import 'package:flutter/material.dart';

class NamedWidget extends StatelessWidget {
  final String name;
  const NamedWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          child: Center(
            child: Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
