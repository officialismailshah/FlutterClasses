import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Sliders(),
      ),
    );
  }
}

class Sliders extends StatefulWidget {
  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double slider1 = 0;
  double slider2 = 0;
  double slider3 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          thumbColor: Colors.amber,
          value: slider1,
          onChanged: (value) {
            setState(() {
              print(value);
              slider1 = value;
              double half = (1.0 - slider1).toDouble();
              slider2 = half / 2;
              slider3 = half / 2;
            });
          },
        ),
        Slider(
          value: slider2,
          onChanged: (value) {
            setState(() {
              slider2 = value;
              double half = (1.0 - slider2).toDouble();
              slider1 = half / 2;
              slider3 = half / 2;
            });
          },
        ),
        Slider(
          value: slider3,
          onChanged: (value) {
            setState(() {
              slider3 = value;
              double half = (1.0 - slider3).toDouble();
              slider1 = half / 2.0;
              slider2 = half / 2.0;
            });
          },
        ),
      ],
    );
  }
}
