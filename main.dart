import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class Product {
  final String name;
  final String description;
  final int price;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

class FirstRoute extends StatelessWidget {
  FirstRoute({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
      name: "iPhone 12 Plus",
      description:
          "iPhone 12 Plus in October 2020 alongside the smaller iPhone 12 Mini and more premium iPhone 12 Pro and Pro Max",
      price: 1000,
      image: "iphone12plus.jpeg",
    ),
    // Add other products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: products.map((product) {
          return ProductBox(
            name: product.name,
            description: product.description,
            price: product.price,
            image: product.image,
          );
        }).toList(),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Next Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  SecondRoute({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
      name: "iPhone 12 Plus",
      description:
          "iPhone 12 Plus in October 2020 alongside the smaller iPhone 12 Mini and more premium iPhone 12 Pro and Pro Max",
      price: 1000,
      image: "iphone12plus.jpeg",
    ),
    // Add other products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: products.map((product) {
          return ProductBox(
            name: product.name,
            description: product.description,
            price: product.price,
            image: product.image,
          );
        }).toList(),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Previous Page'),
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/" + image), // Corrected image path
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
