import 'package:flutter/material.dart';

class PMLogo extends StatelessWidget {
  const PMLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Image(
        image: AssetImage('assets/pm.jpeg'),
      ),
    );
  }
}
