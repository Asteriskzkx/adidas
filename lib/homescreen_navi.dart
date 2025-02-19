import 'package:adidas/adiclub_screen.dart';
import 'package:adidas/adidas_screen.dart';
import 'package:adidas/favourite_screen.dart';
import 'package:adidas/homescreen.dart';
import 'package:adidas/search_screen.dart';
import 'package:adidas/shopping_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomescreenNavi extends StatefulWidget {
  const HomescreenNavi({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomescreenNavi();
  }
}

class _HomescreenNavi extends State<HomescreenNavi> {
  int _selectedIndex = 0;

  final Map<int, Map<String, Widget>> _navigationMap = {
    0: {"title": const Text('Home'), "screen": Homescreen()},
    1: {"title": const Text('Search'), "screen": SearchScreen()},
    2: {"title": const Text('Favorites'), "screen": FavouriteScreen()},
    3: {"title": const Text('Cart'), "screen": ShoppingScreen()},
    4: {"title": const Text('AdiClub'), "screen": AdiclubScreen()},
  };

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SHOP',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              letterSpacing: 2.0,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                icon: const Icon(Icons.person_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children:
              _navigationMap.values.map((page) => page["screen"]!).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/logo.png",
                  width: 30,
                  height: 30,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Search"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: "Favorites"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/adiclub.png",
                  width: 45,
                  height: 45,
                ),
                label: "AdiClub"),
          ],
        ),
      ),
    );
  }
}
