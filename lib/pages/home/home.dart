import 'package:dealsmart/pages/home/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageSate();
}

class _HomePageSate extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: 
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
              // App Logo
              Image.asset(
                'assets/images/app_icon.png', // App logo path
                // height: 80,
              ),
          //   ],
          // ),
        ),
      ),
      body: [
        const Products(),
        const SizedBox(),
        const SizedBox(),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) => setState(
          () {
            currentPageIndex = index;
          },
        ),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home),
            label: currentPageIndex == 0 ? "Home" : "",
          ),
          NavigationDestination(
            icon: const Icon(Icons.person),
            label: currentPageIndex == 1 ? "User" : "",
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings),
            label: currentPageIndex == 2 ? "" : "",
          ),
        ],
      ),
    );
  }
}
