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
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: Icon(Icons.image),
                  title: Text(items[index]),
                  trailing: Icon(Icons.image),
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => NamedWidget(
                        name: items[index],
                      ),
                    );
                    Navigator.of(context).push(route);
                  });
            },
          ),
        ));
  }
}
class AnyWidget extends StatelessWidget {
  const AnyWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color:Colors.pink),);
  }
}