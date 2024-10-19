import 'package:bud/src/layout/screens/cart/cart_screen.dart';
import 'package:bud/src/layout/screens/favorite/favorite_screen.dart';
import 'package:bud/src/layout/screens/home/home_screen.dart';
import 'package:bud/src/layout/screens/menu/menu_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selected =0;
  bool heart =true;
  PageController controller = PageController(initialPage: 0);
  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const FavoriteScreen(),
      const CartScreen(),
      const MenuScreen(),
    ];
  }
  int currentPage=0;
  PersistentTabController persistentController = PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: persistentController.index,
          onTap: (index) {
            setState(() {
              persistentController.index = index;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Menu',
            ),
          ],
        ),
        body: _buildScreens()[persistentController.index],
      );
  }
}
