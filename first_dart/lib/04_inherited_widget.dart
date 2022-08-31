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
      child: CounterWidget(
        count,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("textCount $count"),
            const STLWidget(),
            const STFWidget(),
            ElevatedButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  count += 1;
                  print(count);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class CounterWidget extends InheritedWidget {
  final int count;
  const CounterWidget(this.count, {Key? key, required Widget child}):
        super(key: key, child: child);

  static int countOf(BuildContext context) {
    CounterWidget? counter = context.dependOnInheritedWidgetOfExactType();
    int count = counter?.count ?? 0;
    print("get count $count");
    return count;
  }

  @override
  bool updateShouldNotify(CounterWidget oldWidget) {
    return true; // oldWidget.count != count;
  }
}

class STLWidget extends StatelessWidget {
  const STLWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = CounterWidget.countOf(context);
    return Text("stl count: $count");
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
    int count = CounterWidget.countOf(context);
    return Text("STF count $count");
  }

  @override
  void didUpdateWidget(covariant STFWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget2");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
