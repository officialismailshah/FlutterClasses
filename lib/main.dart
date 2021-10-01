import 'package:flutter/material.dart';

import 'name_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final items = [
    'mohib',
    'ismail',
    'ihsan',
    'mohib',
    'ismail',
    'ihsan',
    'mohib',
    'ismail',
    'ihsan',
    'mohib',
    'ismail',
    'ihsann',
    'mohib',
    'ismail',
    'ihsann',
    'mohib',
    'ismail',
    'ihsann',
    'mohib',
    'ismail',
    'ihsann',
    'mohib',
    'ismail',
    'ihsann',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: GridView.builder(
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey,
                              spreadRadius: 5,
                              offset: Offset(-3, 3))
                        ]),
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Text(
                        index.toString(),
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}

class AnyWidget extends StatelessWidget {
  const AnyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.pink),
    );
  }
}
