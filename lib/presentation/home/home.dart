import 'package:advanced_flutter/presentation/managers/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/routes_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.cart);
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Consumer<StoreProvider>(builder: (context, storeProvider, _) {
        return ListView(
          children: storeProvider.products
              .map((product) => Container(
                    child: Column(
                      children: [
                        Text(product.name),
                        Text(product.libelle),
                        Text(product.price.toString()),
                        ElevatedButton(
                            onPressed: () {
                              storeProvider.addToCart(product);
                            },
                            child: Text("Ajouter"))
                      ],
                    ),
                  ))
              .toList(),
        );
      }),
    );
  }
}
