import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello_flutter_2"),
      ),
      body: MyHomeBody("Body Message"),
    );
  }
}

class MyHomeBody extends StatefulWidget {
  // const MyHomeBody({Key? key}) : super(key: key);

  final String message;

  MyHomeBody(this.message);

  @override
  State<MyHomeBody> createState() => _MyHomeBodyState();
}

class _MyHomeBodyState extends State<MyHomeBody> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getButtons(),
          Text("current count: $count, message: ${widget.message}")
        ],
      ),
    );
  }

  Widget getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
            child: Text("+"),
            color: Colors.red,
            onPressed: () {
              setState(() {
                count += 1;
              });
            }),
        RaisedButton(
            child: Text("-"),
            color: Colors.green,
            onPressed: () {
              setState(() {
                count -= 1;
              });
            }),
      ],
    );
  }
}
