import 'package:flutter/cupertino.dart';

import '../../../data/products.dart';

class StoreProvider extends ChangeNotifier {
  List<Product> products = [
    Product(id: 1, name: 'Ordinateur', libelle: 'Dell XPS', price: 9.99),
    Product(id: 2, name: 'Souris', libelle: 'Souris de bureau', price: 19.99),
    Product(id: 3, name: 'Clavier', libelle: 'Clavier de bureau', price: 29.99),
  ];

  List<Product> buyProducts = [];

  List<Product> cart = [];

  void addToCart(Product product){
    cart.add(product);
    notifyListeners();
  }

  void buyProduct(){
    buyProducts += cart;
    cart.clear();
    notifyListeners();
  }

  void removeToCart(Product product){
    cart.remove(product);
    notifyListeners();
  }
}