import 'package:entire/Models/cart.dart';
import 'package:flutter/widgets.dart';

class CartProvider extends ChangeNotifier {
  Map<String, Cart> _items = {};
  Map<String, Cart> get items => {..._items};

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void increaseQuantity(String cartId) {
    _items.update(
        cartId,
        (value) => Cart(
            id: value.id,
            image: value.image,
            price: value.price,
            title: value.title,
            quantity: value.quantity + 1));
    notifyListeners();
  }

  void decreaseQuantity(String cartId) {
    if (_items[cartId]!.quantity <= 1) return;
    _items.update(
      cartId,
      (value) => Cart(
          id: value.id,
          image: value.image,
          price: value.price,
          title: value.title,
          quantity: value.quantity - 1),
    );

    notifyListeners();
  }

  void addItem(String productId, double price, String title, int quantity,
      String image) {
    if (_items.containsKey(productId)) return;
    _items.putIfAbsent(
        productId,
        () => Cart(
            image: image,
            id: DateTime.now().toString(),
            title: title,
            quantity: quantity,
            price: price));
    notifyListeners();
  }
}
