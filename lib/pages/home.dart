import 'package:dealsmart/models/product_model.dart';
import 'package:dealsmart/samples/product_samples.dart';
import 'package:dealsmart/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart'; // For formatting the date

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get today's date in the required format
    final todayDate = DateFormat("EEEE, d MMMM yyyy").format(DateTime.now());

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.png'), // Background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App Logo and Heading Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // App Logo
                      Image.asset(
                        'assets/images/app_icon.png', // App logo path
                        height: 80,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Heading and Date
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Daily Deal',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '$todayDate',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Product Cards - Horizontal Scroll
                  // ProductCard(product: samples[0]),],),),),

                  // Tab Widget with Images in Horizontal Scroll
                  // Expanded(
                  //   child: TabWithSlider(),
                  // ),
                  //   ],
                  // ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      appBar:   null,
    );
  }
}

class TabWithSlider extends StatefulWidget {
  @override
  _TabWithSliderState createState() => _TabWithSliderState();
}

class _TabWithSliderState extends State<TabWithSlider> {
  int selectedIndex = 0;

  final List<String> tabs = ['Tab 1', 'Tab 2', 'Tab 3'];
  final List<String> images = [
    'https://via.placeholder.com/300x200?text=Tab+1',
    'https://via.placeholder.com/300x200?text=Tab+2',
    'https://via.placeholder.com/300x200?text=Tab+3',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tabs
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: tabs.map((tab) {
            final tabIndex = tabs.indexOf(tab);
            final isSelected = tabIndex == selectedIndex;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = tabIndex;
                });
              },
              child: Text(
                tab,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.blue : Colors.white,
                ),
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        // Images in Horizontal Scroll with Centered Effect
        Expanded(
          child: PageView.builder(
            controller: PageController(
              viewportFraction: 0.8, // Creates the centered effect
            ),
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            itemCount: images.length,
            itemBuilder: (context, index) {
              final isSelected = index == selectedIndex;
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: isSelected
                      ? [BoxShadow(color: Colors.blue, blurRadius: 10)]
                      : [],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
