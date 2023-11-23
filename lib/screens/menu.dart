import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:banana_app/widgets/left_drawer.dart';
import 'package:banana_app/widgets/shop_card.dart';

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
      return Provider(
        create: (_) {
          CookieRequest request = CookieRequest();
          return request;
        },
        child: Scaffold(
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
        )
      );
    }
}