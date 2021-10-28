import 'package:flutter/material.dart';

class SubmitScreen extends StatelessWidget {
  const SubmitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Data Submitted',
          ),
        ),
      ),
    );
  }
}
