import 'package:flutter/material.dart';
import 'package:banana_app/widgets/left_drawer.dart';

class ShopCardPage extends StatelessWidget {
  ShopCardPage({Key? key}) : super(key: key);
  List items = ShopItemCard.itemlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Card Data Produk'
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Banana Shop', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                shrinkWrap: true,
                children: items.map((item) {
                  // Iterasi untuk setiap item
                  return ItemCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final ShopItemCard item;
  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: InkWell(
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  "Nama: " + item.name + "\nHarga: " + item.price.toString() + "\nDeskripsi: " + item.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShopItemCard {
  final String name;
  final int price;
  final String description;

  ShopItemCard(this.name, this.price, this.description);

  static List<ShopItemCard> itemlist = [
    ShopItemCard("Ikan", 12000, "bawal"),
    ShopItemCard("Ayam", 15000, "Kampung"),
  ];
}