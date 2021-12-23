// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:listtile/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final items = ['Home', 'Cabin', 'Calendar'];

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
          backgroundColor: Color(0xffba7629),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailPage()));
              },
              leading: Icon(Icons.today),
              title: Text(items[index]),
              subtitle: Text("is Thursday"),
              trailing: Icon(Icons.calendar_view_day),
            ),
          );
        },
        itemCount: items.length,
        ));
  }
}
