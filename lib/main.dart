import 'package:advanced_flutter/app/app.dart';
import 'package:advanced_flutter/presentation/managers/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => StoreProvider())],
    child: MyApp(),
  ));
}
