import 'package:first_app/details.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final categories = [
    {"iconname": Icons.tag_faces_sharp, "title": "Men"},
    {"iconname": Icons.laptop, "title": "Laptop"},
    {"iconname": Icons.face_2, "title": "Women"},
    {"iconname": Icons.phone_android_sharp, "title": "Mobile"},
    {"iconname": Icons.family_restroom_rounded, "title": "Family"},
    {"iconname": Icons.tag_faces_sharp, "title": "Men"},
  ];

  final List items = [
    {
      "imagename": "lib/images/bread.jpg",
      "title": "Bread",
      "subtitle": "Descreption",
      "price": "359\$",
    },
    {
      "imagename": "lib/images/flower.jpg",
      "title": "Flower",
      "subtitle": "Descreption",
      "price": "339\$",
    },
    {
      "imagename": "lib/images/bread.jpg",
      "title": "Bread",
      "subtitle": "Descreption",
      "price": "359\$",
    },
    {
      "imagename": "lib/images/flower.jpg",
      "title": "Flower",
      "subtitle": "Descreption",
      "price": "339\$",
    },
    {
      "imagename": "lib/images/bread.jpg",
      "title": "Bread",
      "subtitle": "Descreption",
      "price": "359\$",
    },
    {
      "imagename": "lib/images/flower.jpg",
      "title": "Flower",
      "subtitle": "Descreption",
      "price": "339\$",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "*",
            ),
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
        endDrawer: Icon(Icons.list_sharp, size: 50),
        key: scaffoldKey,
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),

            child: TextFormField(
              enableSuggestions: true,

              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.search, size: 30),
                ),
                prefixIconColor: Colors.black,
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              customElevatedBTN(
                context: context,
                screenData: 'Home Screen Nti',
                screenName: 'homescreennti',
              ),
              customElevatedBTN(
                context: context,
                screenData: 'Home Screen Nti',
                screenName: 'homescreennti',
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'splash'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Splash Almsar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'loginpage'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Login And Reg Almsar',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("keyboardlisner");
                  },
                  child: Text("Go To page keyboardlisner"),
                ),
              ),
              Text(
                "Test Custom font",
                style: TextStyle(fontFamily: "Lumanosimo"),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("pageshared");
                  },
                  child: Text("Go To page testshared"),
                ),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("dropdown");
                  },
                  child: Text("Go To page drop down"),
                ),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: MaterialButton(
                  onPressed: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.noHeader,
                      customHeader: Image.asset("lib/images/bread.jpg"),
                      animType: AnimType.rightSlide,
                      title: 'Dialog Title',
                      desc: 'Dialog description here.............',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  },
                  child: Text("Show awesome dialog"),
                ),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("pagetwo");
                  },
                  child: Text("Go To page two"),
                ),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("pageone");
                  },
                  child: Text("Go To page one"),
                ),
              ),
              Text(
                "Categories",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(height: 20),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              categories[index]['iconname'] as IconData?,
                              size: 50,
                            ),
                          ),
                          Text(
                            categories[index]['title'].toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                ),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ItemDetails(data: items[index]),
                        ),
                      );
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 200,
                            child: Image.asset(
                              items[index]["imagename"],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            items[index]["title"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            items[index]["subtitle"],
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            items[index]["price"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              //******************************** */
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 30),
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       Navigator.of(context).pushNamed("snackbar");
              //     },
              //     child: Text("Go To snackbar page (push named)"),
              //   ),
              // ),
              // Center(
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         SnackBar(
              //           content: Text("copy succes"),
              //           action: SnackBarAction(
              //             label: "ok",
              //             onPressed: () {
              //               print("Snack bar");
              //             },
              //           ),
              //         ),
              //       );
              //     },
              //     child: Text("Show snack bar"),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 90),
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       scaffoldKey.currentState!.showBottomSheet(
              //         (context) => Container(
              //           height: 100,
              //           width: 1000,
              //           color: Colors.grey,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text("Choose image :"),
              //               Container(height: 10),
              //               Text("from Gallry :"),
              //               Text("from cammera :"),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //     child: Text("Show sheet button"),
              //   ),
              // ),
              // Center(
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       showDialog(
              //         barrierColor: Colors.tealAccent,
              //         barrierDismissible: false,
              //         context: context,
              //         builder: (context) {
              //           return AlertDialog(
              //             backgroundColor: Colors.blueGrey,
              //             contentPadding: EdgeInsets.all(20),
              //             icon: Icon(Icons.add),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(50),
              //             ),
              //             titlePadding: EdgeInsets.all(20),
              //             title: Text("worring"),
              //             content: Text("Are you sure"),
              //             actions: [
              //               TextButton(
              //                 onPressed: () {
              //                   print("ok");
              //                 },
              //                 child: Text("ok"),
              //               ),
              //               TextButton(
              //                 onPressed: () {
              //                   Navigator.of(context).pop();
              //                 },
              //                 child: Text("cancle"),
              //               ),
              //             ],
              //           );
              //         },
              //       );
              //     },
              //     child: Text("show dialog"),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 30),
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       Navigator.of(
              //         context,
              //       ).push(MaterialPageRoute(builder: (context) => AboutUs()));
              //     },
              //     child: Text("Go To About us page (push)"),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 30),
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       Navigator.of(context).pushNamed("about");
              //     },
              //     child: Text("Go To About us page (push named)"),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       Navigator.of(context).pushReplacement(
              //         MaterialPageRoute(builder: (context) => Contact()),
              //       );
              //     },
              //     child: Text("Go To contact Page (pushReplacement)"),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       Navigator.of(context).pushReplacementNamed("contact");
              //     },
              //     child: Text("Go To contact Page (pushReplacement named)"),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 30),
              //   child: MaterialButton(
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     onPressed: () {
              //       Navigator.of(context).pop();
              //     },
              //     child: Text("Back"),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton customElevatedBTN({
    required BuildContext context,
    required String screenName,
    required String screenData,
  }) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, screenName),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        screenData,
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}
