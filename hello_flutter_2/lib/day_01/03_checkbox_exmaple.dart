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
      body: MyHomeBody(),
    );
  }
}

class MyHomeBody extends StatefulWidget {
  const MyHomeBody({Key? key}) : super(key: key);

  @override
  State<MyHomeBody> createState() => _MyHomeBodyState();
}

class _MyHomeBodyState extends State<MyHomeBody> {
  var flag = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(value: flag, onChanged: (value) {
            setState(() {
              flag = value ?? false;
            });
          }),
          Text("请阅读和同意用户使用条款")
        ],
      ),
    );
  }
}
