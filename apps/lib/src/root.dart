import 'package:flutter/material.dart';

import 'ui/home_page.dart';
import 'ui/library_page.dart';
import 'ui/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  bottomTapped({required int index}) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          pageChanged(index);
        },
        children: [
          Home(),
          ShopPage(),
          const LibraryPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green.shade900,
        unselectedItemColor: Colors.white.withOpacity(0.3),
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          setState(
            () {
              bottomSelectedIndex = index;
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: "Library",
          ),
        ],
      ),
    );
  }
}
