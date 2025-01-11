import 'package:dealsmart/samples/product_samples.dart';
import 'package:dealsmart/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Products extends StatelessWidget {
  final int currentPageIndex = 0;
  const Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get today's date in the required format
    final todayDate = DateFormat("EEEE, d MMMM yyyy").format(DateTime.now());
    final double width = MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: const BoxDecoration(
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     // App Logo
                //     Image.asset(
                //       'assets/images/app_icon.png', // App logo path
                //       height: 80,
                //     ),
                //   ],
                // ),
                const SizedBox(height: 20),
                // Heading and Date
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Daily Deal',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      todayDate,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // ProductCard(
                //   product: samples[1],
                //   width: width,
                // ),
                SizedBox(
                  height: 170,
                  width: width - 20,
                  child: CustomScrollView(
                    scrollDirection: Axis.horizontal,
                    slivers: [
                      SliverToBoxAdapter(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: samples.length,
                          itemBuilder: (context, index) => Stack(
                            children: [
                              const SizedBox(
                                height: 170,
                              ),
                              ProductCard(
                                  product: samples[index],
                                  width: (width - 20) * 0.75),
                              const Positioned(
                                bottom: -3,
                                left: -2,
                                child: Stack(
                                  children: [
                                    Icon(
                                      size: 50,
                                      Icons.arrow_circle_right,
                                      color: Colors.white70,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
