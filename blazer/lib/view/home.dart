import 'package:blazer/component/custom_app_bar.dart';
import 'package:blazer/component/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home extends StatelessWidget {
  List cartList = ["All", "Best Selling", "Jackets", "Shirts", "pants", "Bags"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
        onMenuPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      drawer: CustomDrawer(
        onMenuItemSelected: (String menuItem) {
          print('Selected menu item: $menuItem');
          Navigator.pop(context); // Close the drawer
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Image.asset(
                        "images/cover.png",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 10,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fashion Sale',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Handle categories button press
                              },
                              child: Text(
                                'Categories',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 229, 33, 243),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Featured Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CardWidget(
                        image: 'images/bw1.png',
                        rating: 4.5,
                        discount: 20,
                        price: 2500,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CardWidget(
                        image: 'images/bw2.png',
                        rating: 4.0,
                        discount: 15,
                        price: 2200,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CardWidget(
                        image: 'images/bm1.png',
                        rating: 4.2,
                        discount: 25,
                        price: 2800,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CardWidget(
                        image: 'images/bm2.png',
                        rating: 4.8,
                        discount: 18,
                        price: 3200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String image;
  final double rating;
  final int discount;
  final int price;

  CardWidget({
    required this.image,
    required this.rating,
    required this.discount,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 100,
                right: 5,
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    // Handle adding to cart
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBarIndicator(
                  rating: rating,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                  unratedColor: Colors.grey[400],
                  direction: Axis.horizontal,
                ),
                SizedBox(height: 5),
                Text(
                  'Discount: $discount%',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Price: LKR $price',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // Handle favorite button press
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
