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
      body: DynamicHomeBody(),
    );
  }
}

// static widget life cycle
class StaticHomeBody extends StatelessWidget {
  StaticHomeBody({Key? key}) : super(key: key) {
    print("StaticHomeBody init 1");
  }

  @override
  Widget build(BuildContext context) {
    print("StaticHomeBody build");

    return Text("i am static");
  }
}


class DynamicHomeBody extends StatefulWidget {
  DynamicHomeBody({Key? key}) : super(key: key) {
    print("1. DynamicHomeBody init");
  }

  @override
  State<DynamicHomeBody> createState() {
    print("2. DynamicHomeBody createState");
    return _DynamicHomeBodyState();
  }
}

class _DynamicHomeBodyState extends State<DynamicHomeBody> {
  var count = 0;

  _DynamicHomeBodyState() : super() {
    print("3 _DynamicHomeBodyState init");
  }

  @override
  void initState() {
    super.initState();
    print("4 _DynamicHomeBodyState initState");
  }

  @override
  Widget build(BuildContext context) {
    print("5 _DynamicHomeBodyState build");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getButtons(),
          Text("current count: $count")
        ],
      ),
    );
  }

  @override
  void dispose() {
    print("6 _DynamicHomeBodyState dispose");
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
