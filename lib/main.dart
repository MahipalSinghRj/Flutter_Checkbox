import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  final List<SimpleModel> _items = <SimpleModel>[
    SimpleModel('InduceSmile.com', false),
    SimpleModel('Flutter.io', false),
    SimpleModel('google.com', false),
    SimpleModel('youtube.com', false),
    SimpleModel('yahoo.com', false),
    SimpleModel('gmail.com', false),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Card(
          color: Colors.limeAccent,

          child: ListView(
            padding: const EdgeInsets.all(8),
            children: _items
                .map(
                  (SimpleModel item) => CheckboxListTile(

                title: Text(item.title),
                value: item.isChecked,
                onChanged: (  val) {
                  setState(() => item.isChecked = val!);
                },
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}

class SimpleModel {
  String title;
  bool isChecked;

  SimpleModel(this.title, this.isChecked);
}
