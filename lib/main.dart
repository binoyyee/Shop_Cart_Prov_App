import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_cart_prov_app/providers/cart_provider.dart';

import 'pages/cart_page.dart';
import 'pages/products_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Shop Cart',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/products",
      routes: {
        "/products": (context) => ProductsPage(),
        "/cart": (context) => CartPage(),
      },
    );
  }
}
