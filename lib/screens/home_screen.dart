import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import '../l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;

    final featuredProducts = [
      'assets/images/laptop.jpg',
      'assets/images/camera.jpg',
    ];

    final products = [
      Product(title: "Laptop", imagePath: 'assets/images/laptop.jpg'),
      Product(title: "Smartphone", imagePath: 'assets/images/smartphone.png'),
      Product(title: "Headphones", imagePath: 'assets/images/headphones.png'),
      Product(title: "Camera", imagePath: 'assets/images/camera.jpg'),
    ];

    final hotOffers = [
      {"image": "assets/images/summerSale.png", "desc": "Summer Sale"},
      {"image": "assets/images/50%offer.png", "desc": "50% off on Laptops"},
      {"image": "assets/images/50%offer.png", "desc": "50% off on Smartphones"},
      {"image": "assets/images/b2g1.png", "desc": "Buy 2 Get 1 Free"},
      {"image": "assets/images/freeDelivery.png", "desc": "Free Shipping Weekend"},
    ];

    return Scaffold(
      appBar: AppBar(title: Text(t.ourProducts)),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: featuredProducts
                  .map((img) => Image.asset(img, fit: BoxFit.cover))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                  onAddToCart: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("${products[index].title} ${t.addToCart}")),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(t.hotOffers,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: hotOffers.length,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  children: [
                    Image.asset(
                      hotOffers[index]["image"]!,
                      width: 170,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(hotOffers[index]["desc"]!),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
