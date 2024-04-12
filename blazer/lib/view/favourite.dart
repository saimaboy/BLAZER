import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 5, // Example number of favourite items
          itemBuilder: (context, index) {
            return FavouriteItemWidget(
              itemName: 'Item ${index + 1}',
              itemImage: 'images/item${index + 1}.jpg', // Example image path
            );
          },
        ),
      ),
    );
  }
}

class FavouriteItemWidget extends StatelessWidget {
  final String itemName;
  final String itemImage;

  FavouriteItemWidget({
    required this.itemName,
    required this.itemImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    itemImage,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.red,
              onPressed: () {
                // Implement removing from favourites
              },
            ),
          ],
        ),
      ),
    );
  }
}


