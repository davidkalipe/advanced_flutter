import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../managers/providers/product_provider.dart';
import '../resources/routes_manager.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, Routes.home);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Consumer<StoreProvider>(builder: (context, storeProvider, _) {
        return ListView(
          children: storeProvider.cart
              .map((product) => Container(
                    child: Column(
                      children: [
                        Text(product.name),
                        Text(product.libelle),
                        Text(product.price.toString()),
                        ElevatedButton(
                            onPressed: () {
                              storeProvider.removeToCart(product);
                            },
                            child: Text("Supprimer"))
                      ],
                    ),
                  ))
              .toList(),
        );
      }),
    );
  }
}
