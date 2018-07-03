

import 'package:design_pattern/common/models/cart.dart';
import 'package:design_pattern/common/models/cart_item.dart';
import 'package:design_pattern/common/models/product.dart';
import 'package:scoped_model/scoped_model.dart';

class CartModel extends Model {
  final _cart = Cart();

  List<CartItem> get items => _cart.items;

  int get itemCount => _cart.itemCount;

  void add(Product product) {
    _cart.add(product);
    notifyListeners();
  }
}
