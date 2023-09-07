import 'package:flutter/material.dart';
import 'package:store_application/pages/home_page.dart';
import 'package:store_application/pages/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => const UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
