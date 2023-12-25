import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/screens/home/home.dart';
import 'package:ultimate_invoicer/screens/invoices/invoice.dart';
import 'package:ultimate_invoicer/screens/parties/parties.dart';
import 'package:ultimate_invoicer/screens/products/products.dart';
import 'package:ultimate_invoicer/screens/settings/settings.dart';
import 'package:ultimate_invoicer/theme/colors.dart';

class PageVieew extends StatefulWidget {
  const PageVieew({super.key});

  @override
  State<PageVieew> createState() => _PageVieewState();
}

class _PageVieewState extends State<PageVieew> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    Home(),
    Parties(),
    Products(),
    Invoice(),
    Settings(),
  ];

  void animateToPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Map<String, dynamic>> pages = [
    {
      'icon': Icons.home,
      'page': const Home(),
      'title': 'home',
    },
    {
      'icon': Icons.people,
      'page': const Parties(),
      'title': 'parties',
    },
    {
      'icon': Icons.shopping_cart,
      'page': const Products(),
      'title': 'products',
    },
    {
      'icon': Icons.receipt,
      'page': const Invoice(),
      'title': 'invoice',
    },
    {
      'icon': Icons.settings,
      'page': const Settings(),
      'title': 'settings',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.secondary,
        showUnselectedLabels: true,
        onTap: animateToPage,
        currentIndex: selectedIndex,
        items: pages
            .map(
              (page) => BottomNavigationBarItem(
                icon: Icon(page['icon']),
                label: page['title'],
              ),
            )
            .toList(),
      ),
    );
  }
}
