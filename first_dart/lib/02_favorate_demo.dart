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
        )
    );
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image.network("https://www.apple.com.cn/v/home/aq/images/promos/september2022-teaser/tile__cauwwcyyn9hy_small_2x.jpg"),
        Container(
            padding: const EdgeInsets.all(4),
            color: Colors.white24,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("海贼王挺不错的", style: TextStyle(color: Colors.blue),),
                  IconButton(icon: const Icon(Icons.favorite), color: getColor(), onPressed: () => onPressFav())
                ]
            )
        )
      ],
    );
  }

  Color getColor() {
    if (flag) {
      return Colors.red;
    } else {
      return Colors.white;
    }
  }

  void onPressFav() {
    setState(() => flag = !flag);
  }
}
