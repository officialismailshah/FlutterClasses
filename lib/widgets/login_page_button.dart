import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String firstBtn, secondBtn;
  final Widget firstOnpressed, secondOnpressed;
  const Buttons({
    Key? key,
    required this.secondBtn,
    required this.secondOnpressed,
    required this.firstBtn,
    required this.firstOnpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Button(
            type: firstBtn,
            widget: firstOnpressed,
          ),
          SizedBox(height: 20),
          Button(
            type: secondBtn,
            widget: secondOnpressed,
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String type;
  final Widget widget;
  const Button({
    Key? key,
    required this.widget,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        minimumSize: Size(250, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Route route = MaterialPageRoute(builder: (context) => widget);
        Navigator.of(context).push(route);
      },
      child: Text(
        type,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
