import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(title: const Text("first_dart")),
          body: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void sayHome() {
    print("say home");
  }

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    widget.coolPrint();
    return const Text("hello")
        .padding()
        .backgroundColor()
        .centered();
  }
}

extension MyExtension on Widget {
  void coolPrint() {
    if (kDebugMode) {
      print("cool print $this");
    }
  }

  Center centered() {
    return Center(
      child: this,
    );
  }

  Padding padding() {
    return Padding(padding: const EdgeInsets.all(8), child: this);
  }

  Container backgroundColor() {
    return Container(
      height: 50,
      padding: EdgeInsets.zero,
      color: Colors.blue,
      child: this,
    );
  }
}
