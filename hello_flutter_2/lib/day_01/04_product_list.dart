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
    return ListView(
      children: [
        HomeProductItem("Apple 1", "Macbook 1", "https://www.apple.com/v/ipad-10.9/a/images/overview/hero/hero__ecv967jz1y82_large_2x.jpg"),
        HomeProductItem("Apple 2", "Macbook 2", "https://www.apple.com/v/iphone-14-pro/b/images/overview/colors/gallery_deep_purple__eog5f5067tw2_large_2x.jpg"),
        HomeProductItem("Apple 3", "Macbook 3", "https://www.apple.com/v/apple-watch-ultra/d/images/overview/design/dive_face_dark_part2_endframe__gngvfua035m6_large_2x.jpg")
      ],
    );
  }
}

class HomeProductItem extends StatelessWidget {
  // const HomeProductItem({Key? key}) : super(key: key);

  final String title;
  final String desc;
  final String imageURL;

  HomeProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(width: 5, color: Colors.cyan),),
      child: Column(
        children: [
          Text(title, style: TextStyle(fontSize: 25, color: Colors.blue),),
          SizedBox(height: 5,),
          Text(desc, style: TextStyle(fontSize: 20, color: Colors.green),),
          SizedBox(height: 5,),
          Image.network(imageURL),
        ],
      ),
    );
  }
}

