import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key, this.data});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
  final data;
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "*"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "*",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "*",
          ),
        ],
      ),
      endDrawer: Drawer(width: 40),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.storefront_sharp, color: Colors.black),
            Text(" Ecommerce", style: TextStyle(color: Colors.black)),
            Text(" Ragab", style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: ListView(
        children: [
          Image.asset(widget.data["imagename"], height: 300),
          Text(
            widget.data["title"],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(widget.data["subtitle"], textAlign: TextAlign.center),
          SizedBox(height: 5),
          Text(
            widget.data["price"],
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.orange, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Color: "),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orange, width: 3),
                ),
              ),
              Text("Gray"),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Text("Black"),
            ],
          ),
          Text("Size:  39  40  41  42  43", textAlign: TextAlign.center),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 80),

            decoration: BoxDecoration(color: Colors.black),

            child: MaterialButton(
              onPressed: () {},
              child: Text("Add To Cart", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
