import 'package:flutter/material.dart';

import '../models/items.dart';

class Cart with ChangeNotifier {
  //Data Transfer And Update
  List selectedProduct = [];
  int price = 0;
  add(Item product) {
    selectedProduct.add(product);
    price += product.price.round();
    notifyListeners();
  }
   delete(Item product) {
    selectedProduct.remove(product);
    price -= product.price.round();

    notifyListeners();
  }
}
