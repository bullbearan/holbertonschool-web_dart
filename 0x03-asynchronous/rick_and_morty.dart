import "package:http/http.dart" as http;
import 'dart:convert';

printRmCharacters() async {
  try {
    var res = await http.get(
      Uri.parse('https://rickandmortyapi.com/api/character'),
    );
    var data = jsonDecode(res.body)['results'];
    for (int idx = 0; idx < data.length; idx++) {
      print("${data[idx]['name']}");
    }
  } catch (err) {
    print('error caught: $err');
  }
}
