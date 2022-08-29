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

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  bool flag = false;
  var count = 0;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          STLWidget(),
          STFWidget(),
          ElevatedButton(
            onPressed: () { count += 1; },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

class STLWidget extends StatelessWidget {
  const STLWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class STFWidget extends StatefulWidget {
  const STFWidget({Key? key}) : super(key: key);

  @override
  State<STFWidget> createState() => _STFWidgetState();
}

class _STFWidgetState extends State<STFWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void didUpdateWidget(covariant STFWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }
}
