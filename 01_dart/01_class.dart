import 'utils/math.dart';
import 'package:http/http.dart' as http;

enum Status { 
   none, 
   running, 
   stopped, 
   paused 
}

void main(List<String> args) async {
  print(sum(5, 1));
  print("hello dart 2");

  var value = Status.running;
  print(value + 3.0)

  test_http();
}

void test_http() async {
  var url = Uri.https('example.com', 'whatsit/create');
  print("request: $url");
  var response =
      await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  print(await http.read(Uri.https('example.com', 'foobar.txt')));
}
