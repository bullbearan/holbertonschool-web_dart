import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var user = await fetchUserData();
  var users = json.decode(user);
  return users["id"];
}
