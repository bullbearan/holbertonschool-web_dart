import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
  try {
    var data = await fetchUserData();
    var userid = jsonDecode(data)['id'];
    var order = await fetchUserOrders(userid);
    List<dynamic> products = jsonDecode(order);
    var price = 0.0;
    for (int i = 0; i < products.length; i++) {
      var current_price = await fetchProductPrice(products[i]);
      price += num.parse(current_price);
    }
    return price;
  } catch (error) {
    return -1;
  }
}
