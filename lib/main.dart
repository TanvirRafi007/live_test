import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
                  home: HomeScreen(),
      title: 'Shopping List App',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Apples'),
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Bananas'),
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Milk'),
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Bread'),
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Eggs'),
        ],
      ),
    );
  }
}

class ShoppingItemTile extends StatelessWidget {
  final IconData icon;
  final String name;

  ShoppingItemTile({required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
    );
  }
}

