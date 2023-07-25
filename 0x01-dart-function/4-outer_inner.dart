void outer(String name, String id) {
  String inner() {
    var namesplit = name.split(" ");
    var name2 = namesplit[1].substring(0, 1) + "." + namesplit[0];
    return "Hello Agent ${name2} your id is $id";
  }
  print(inner());
}
