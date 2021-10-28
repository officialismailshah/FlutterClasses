import 'package:flutter/material.dart';

class LoginFields extends StatelessWidget {
  final TextEditingController number;
  final TextEditingController password;
  const LoginFields({
    Key? key,
    required this.number,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
          LoginField(
            number: number,
            hintText: 'Number',
          ),
        SizedBox(height: 15),
        LoginField(
          number: password,
          hintText: 'Password',
        ),
      ],
    );
  }
}

class LoginField extends StatelessWidget {
  const LoginField({
    Key? key,
    required this.number,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController number;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: number,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
