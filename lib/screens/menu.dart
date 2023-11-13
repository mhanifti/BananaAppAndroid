import 'package:flutter/material.dart';
import 'package:banana_app/widgets/left_drawer.dart';
import 'package:banana_app/screens/shoplist_form.dart';

const List<Color> colorList = [Colors.blue, Colors.red, Colors.green];

class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, 0),
    ShopItem("Tambah Item", Icons.add_shopping_cart, 1),
    ShopItem("Logout", Icons.logout, 2),
  ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                'Game List',
            ),
            backgroundColor: Colors.indigo,
        ),
          drawer: const LeftDrawer(),
        body: SingleChildScrollView(
            // Widget wrapper yang dapat discroll
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
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ShopItem item) {
                    // Iterasi untuk setiap item
                    return ShopCard(item);
                    }).toList(),
                ),
                ],
            ),
            ),
        ),
        );
    }
}

class ShopCard extends StatelessWidget {
  final ShopItem item;
  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colorList[item.id],
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          if (item.id == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopFormPage(),
                ));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
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

class ShopItem {
  final String name;
  final int id;
  final IconData icon;

  ShopItem(this.name, this.icon, this.id);
}