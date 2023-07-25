class User {
  String? name;
  int? age;
  double? height;
  int? id;

  User({required this.id,required  this.name,required  this.age,required  this.height});

  Map toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      name: userJson["name"],
      age: userJson["age"],
      height: userJson["height"],
      id: userJson["id"],
    );
  }

  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height)";
  }
}
