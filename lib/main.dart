import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Proxy Marketers'),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  print('hi i am a Button');
                },
                icon: Icon(Icons.close),
              ),
            ],
            bottom: TabBar(tabs: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Chat'),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Product'),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(child: Text('New Product')),
                ),
              ),
            ]),
          ),
          drawer: Drawer(),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Icon(Icons.person)),
                    title: Text('Mohib Star'),
                    subtitle: Text('I am going'),
                    trailing: Text('24/7'),
                  ),
                ],
              ),
            ),
            ListTile(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              title: Text('Mohib'),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_made,
                    size: 15,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('24/799007'),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
