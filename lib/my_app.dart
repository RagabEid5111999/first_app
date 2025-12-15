import 'package:first_app/aboutuspage.dart';
import 'package:first_app/contact.dart';
// import 'package:first_app/customcard.dart';
import 'package:first_app/homepage.dart';
import 'package:first_app/homescreen_nti.dart';
import 'package:first_app/keyboardex.dart';
import 'package:first_app/login_almsar.dart';
import 'package:first_app/login_and_reg_almsar.dart';
import 'package:first_app/otp_almsar.dart';
import 'package:first_app/package/testsharedpreferance.dart';
import 'package:first_app/pagedropdown.dart';
// import 'package:first_app/listgenerate.dart';
import 'package:first_app/pageone.dart';
import 'package:first_app/pagetwo.dart';
import 'package:first_app/reg_almsar.dart';
import 'package:first_app/snackbarpage.dart';
import 'package:first_app/splash_almsar.dart';
import 'package:first_app/task_one_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  List imageNames = [
    "lib/images/bread.jpg",
    "lib/images/flower.jpg",
    "lib/images/bread.jpg",
    "lib/images/flower.jpg",
    "lib/images/bread.jpg",
  ];
  List<Widget> listWidget = [
    Text("Page 1", style: TextStyle(fontSize: 30)),
    Text("Page 2", style: TextStyle(fontSize: 30)),
  ];
  int selectedindex = 0;
  TabController? tabController;
  int i = 0;
  bool status = true;
  String? country;
  int? age;
  bool? football = false;
  bool? basketball = false;
  bool? tennis = false;
  bool? sccore = false;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TextEditingController username = TextEditingController();
    // GlobalKey<FormState> formkey = GlobalKey<FormState>();
    // String? username2;
    // String? phone;

    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lumanosimo",
        appBarTheme: AppBarTheme(backgroundColor: Colors.red),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 22, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.blue),
        ),
      ),
      routes: {
        "home": (context) => Home(),
        "about": (context) => AboutUs(),
        "contact": (context) => Contact(),
        "snackbar": (context) => Snackbarpage(),
        "pageone": (context) => Pageone(),
        "pagetwo": (context) => Pagetwo(),
        "dropdown": (context) => MyHomePage(),
        "pageshared": (context) => TestSharedPereferance(),
        "keyboardlisner": (context) => KeyboardExample(),
        "loginpage": (context) => LoginAndReg(),
        "splash": (context) => Splash(),
        "loginalmsar": (context) => LoginAlmsar(),
        "regalmsar": (context) => RegAlmsar(),
        "homescreennti": (context) => HomescreenNti(),
        "otpalmsar": (context) => OTPAlmsar(),
        "taskonescreen": (context) => TaskOneScreen(),
      },
    );
  }
}

      // Key for google maps
      // AIzaSyDKFsRgfPqkyJ9ldC5irHmC84A-Ik0jSNs
      // AIzaSyDKFsRgfPqkyJ9ldC5irHmC84A-Ik0jSNs
      // home: DefaultTabController(
      //   length: 3,
      //   initialIndex: 0,
      //   child: Scaffold(
      // home: Scaffold(
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       setState(() {
      //         i++;
      //       });
      //     },
      //     child: Icon(Icons.add),
      //   ),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //   drawer: Drawer(
      //     child: Container(
      //       margin: EdgeInsets.all(10),
      //       child: ListView(
      //         children: [
      //           Row(
      //             children: [
      //               Container(
      //                 width: 60,
      //                 height: 60,
      //                 child: ClipRRect(
      //                   borderRadius: BorderRadius.circular(60),
      //                   child: Image.asset(
      //                     "lib/images/flower.jpg",
      //                     fit: BoxFit.cover,
      //                   ),
      //                 ),
      //               ),
      //               Expanded(
      //                 child: ListTile(
      //                   title: Text("Ragab"),
      //                   subtitle: Text("ragabeid51199@gmail.com"),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           ListTile(leading: Icon(Icons.home), title: Text("HomePage")),
      //           ListTile(leading: Icon(Icons.phone), title: Text("contact us")),
      //           ListTile(leading: Icon(Icons.help), title: Text("help")),
      //           ListTile(
      //             leading: Icon(Icons.account_balance),
      //             title: Text("Bank Account"),
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.online_prediction_rounded),
      //             title: Text("Hot Spot"),
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.abc_outlined),
      //             title: Text("Language"),
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.signpost_outlined),
      //             title: Text("contact us"),
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.exit_to_app),
      //             title: Text("Sign up"),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //   // endDrawer: Drawer(),
      //   key: scaffoldKey,
      //   bottomNavigationBar: BottomNavigationBar(
      //     onTap: (value) {
      //       print(value);
      //       setState(() {
      //         selectedindex = value;
      //       });
      //     },
      //     currentIndex: selectedindex,
      //     backgroundColor: Colors.red,
      //     selectedItemColor: Colors.amber,
      //     unselectedFontSize: 18,
      //     selectedFontSize: 20,
      //     elevation: 30,
      //     iconSize: 30,
      //     selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      //     unselectedItemColor: Colors.green,

      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.settings),
      //         label: "Settings",
      //       ),
      //     ],
      //   ),
      //   appBar: AppBar(
      //     bottom: TabBar(
      //       controller: tabController,
      //       indicatorColor: Colors.red,
      //       indicatorWeight: 8,
      //       labelColor: Colors.red,
      //       labelStyle: TextStyle(fontSize: 20),
      //       unselectedLabelColor: Colors.black,
      //       unselectedLabelStyle: TextStyle(fontSize: 15),
      //       tabs: [
      //         Tab(
      //           iconMargin: EdgeInsets.only(bottom: 10),
      //           icon: Icon(Icons.mobile_friendly),
      //           text: "Mobile",
      //         ),
      //         Tab(
      //           iconMargin: EdgeInsets.only(bottom: 10),
      //           icon: Icon(Icons.computer),
      //           text: "PC",
      //         ),
      //         Tab(
      //           icon: Icon(Icons.laptop),
      //           text: "Laptop",
      //           iconMargin: EdgeInsets.only(bottom: 10),
      //         ),
      //       ],
      //     ),
      //     // leading: Icon(Icons.percent_sharp),
      //     // actions: [
      //     //   Icon(Icons.menu),
      //     //   Icon(Icons.list),
      //     //   Icon(Icons.login),
      //     //   Icon(Icons.exit_to_app),
      //     //   Icon(Icons.list),
      //     // ],
      //     elevation: 10,
      //     shadowColor: Colors.red,
      //     title: Text("Ragab"),
      //     centerTitle: true,
      //     titleTextStyle: TextStyle(
      //       color: Colors.red,
      //       fontSize: 30,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     backgroundColor: Colors.greenAccent,
      //   ),
      //   body: Container(
      //     padding: EdgeInsets.all(20),
      //     child: ListView(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      //           child: MaterialButton(
      //             color: Colors.redAccent,
      //             textColor: Colors.white,
      //             onPressed: () {
      //               Navigator.of(
      //                 context,
      //               ).push(MaterialPageRoute(builder: (context) => AboutUs()));
      //             },
      //             child: Text(
      //               "Go To About us page",
      //               style: TextStyle(
      //                 fontSize: 30,
      //                 backgroundColor: Colors.amber,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 200,

      //           child: PageView.builder(
      //             itemCount: imageNames.length,
      //             itemBuilder: (context, i) {
      //               return Image.asset(imageNames[i], fit: BoxFit.cover);
      //             },
      //           ),
      //           // هذا الجزاء خاص بال page view
      //           // child: PageView(
      //           //   onPageChanged: (value) {
      //           //     print(value);
      //           //   },
      //           //   // reverse: true,
      //           //   // physics: NeverScrollableScrollPhysics(),

      //           //   children: [
      //           //     Image.asset("lib/images/bread.jpg", fit: BoxFit.cover),
      //           //     Image.asset("lib/images/flower.jpg", fit: BoxFit.cover),
      //           //   ],
      //           // ),
      //         ),
      //         Customcard(
      //           name: "Ragab",
      //           email: "ragab@gmail.com",
      //           date: "1-1-2026",
      //           imagename: "flower.jpg",
      //         ),
      //         Customcard(
      //           name: "Ahmed",
      //           email: "ahmed@gmail.com",
      //           date: "1-1-2025",
      //           imagename: "bread.jpg",
      //         ),
      //         // listWidget.elementAt(selectedindex),
      //       ],
      //     ),

      //     // هذا الجزاء خاص بال tap bar
      //     // child: TabBarView(
      //     //   controller: tabController,
      //     //   children: [
      //     //     Column(
      //     //       children: [
      //     //         Text("Mobile page"),
      //     //         MaterialButton(
      //     //           onPressed: () {
      //     //             tabController!.animateTo(1);
      //     //           },
      //     //           child: Text("Go to pc page"),
      //     //         ),
      //     //       ],
      //     //     ),
      //     //     Column(
      //     //       children: [
      //     //         Text("PC page"),
      //     //         MaterialButton(
      //     //           onPressed: () {
      //     //             tabController!.animateTo(2);
      //     //           },
      //     //           child: Text("Go to Laptop page"),
      //     //         ),
      //     //       ],
      //     //     ),
      //     //     Column(
      //     //       children: [
      //     //         Text("Laptop page"),
      //     //         MaterialButton(
      //     //           onPressed: () {
      //     //             tabController!.animateTo(0);
      //     //           },
      //     //           child: Text("Go to Mobile page"),
      //     //         ),
      //     //       ],
      //     //     ),
      //     //   ],
      //     // ),

      //     // child: Form(
      //     //   autovalidateMode: AutovalidateMode.always,
      //     //   key: formkey,
      //     //   child: ListView(
      //     //     children: [
      //     //       Container(
      //     //         padding: EdgeInsets.all(10),
      //     //         child: TabBarView(
      //     //           children: [
      //     //             Text("Mobile page"),
      //     //             Text("PC page"),
      //     //             Text("Laptop page"),
      //     //           ],
      //     //         ),
      //     //       ),
      //     //       Center(
      //     //         child: MaterialButton(
      //     //           color: Colors.amber,

      //     //           onPressed: () {
      //     //             // scaffoldKey.currentState!.openEndDrawer();
      //     //             scaffoldKey.currentState!.openDrawer();
      //     //           },
      //     //           child: Text("Open Drawer"),
      //     //         ),
      //     //       ),
      //     //       TextFormField(
      //     //         // readOnly: true,
      //     //         onTap: () {
      //     //           print("on tap");
      //     //         },
      //     //         textAlign: TextAlign.center,
      //     //         onSaved: (newValue) {
      //     //           username2 = newValue;
      //     //         },
      //     //         decoration: InputDecoration(hintText: "username"),
      //     //         validator: (value) {
      //     //           if (value!.isEmpty) {
      //     //             return "Value shoud not be empty";
      //     //           }
      //     //           if (value.length < 10) {
      //     //             return "value shoud not be less than 10";
      //     //           }
      //     //           if (value.length > 20) {
      //     //             return "value should be less than 20";
      //     //           }
      //     //         },
      //     //       ),
      //     //       TextFormField(
      //     //         textAlign: TextAlign.left,
      //     //         keyboardType: TextInputType.phone,
      //     //         onSaved: (newValue) {
      //     //           phone = newValue;
      //     //         },
      //     //         decoration: InputDecoration(hintText: "Phone"),
      //     //         validator: (value) {
      //     //           if (value!.isEmpty) {
      //     //             return "Value shoud not be empty";
      //     //           }
      //     //           if (value.length < 10) {
      //     //             return "value shoud not be less than 10";
      //     //           }
      //     //           if (value.length > 20) {
      //     //             return "value should be less than 20";
      //     //           }
      //     //         },
      //     //       ),
      //     //       TextFormField(
      //     //         textAlign: TextAlign.left,
      //     //         obscureText: true,
      //     //         onSaved: (newValue) {
      //     //           var password = newValue;
      //     //         },
      //     //         decoration: InputDecoration(hintText: "password"),
      //     //         validator: (value) {
      //     //           if (value!.isEmpty) {
      //     //             return "Value shoud not be empty";
      //     //           }
      //     //           if (value.length < 10) {
      //     //             return "value shoud not be less than 10";
      //     //           }
      //     //           if (value.length > 20) {
      //     //             return "value should be less than 20";
      //     //           }
      //     //         },
      //     //       ),
      //     //       MaterialButton(
      //     //         color: Colors.red,
      //     //         textColor: Colors.white,
      //     //         onPressed: () {
      //     //           if (formkey.currentState!.validate()) {
      //     //             formkey.currentState!.save();
      //     //             print("valid");
      //     //             print(username2);
      //     //             print(phone);
      //     //           } else {
      //     //             print("Not Valid");
      //     //           }
      //     //         },
      //     //         child: Text("Valid"),
      //     //       ),
      //     //       TextField(
      //     //         // controller: username, // ملحوظه مينفعش نستخد ال onchange with controller
      //     //         onChanged: (value) {
      //     //           setState(() {
      //     //             country = value;
      //     //           });
      //     //         },
      //     //       ),
      //     //       MaterialButton(
      //     //         color: Colors.red,
      //     //         textColor: Colors.white,
      //     //         onPressed: () {
      //     //           print(username.text);
      //     //           setState(() {
      //     //             country = username.text;
      //     //           });
      //     //         },
      //     //         child: Text("print"),
      //     //       ),
      //     //       Text("user name : $country"),
      //     //       TextField(
      //     //         enabled: false,
      //     //         decoration: InputDecoration(
      //     //           border: OutlineInputBorder(
      //     //             borderSide: BorderSide(width: 4, color: Colors.black26),
      //     //             borderRadius: BorderRadius.all(Radius.circular(40)),
      //     //           ),
      //     //           focusedBorder: OutlineInputBorder(
      //     //             borderSide: BorderSide(color: Colors.green, width: 4),
      //     //           ),
      //     //           enabledBorder: OutlineInputBorder(
      //     //             borderSide: BorderSide(color: Colors.red, width: 4),
      //     //           ),
      //     //           disabledBorder: OutlineInputBorder(
      //     //             borderSide: BorderSide(color: Colors.blue, width: 3),
      //     //           ),
      //     //         ),
      //     //         maxLength: 50,
      //     //         maxLines: 4,
      //     //         minLines: 2,
      //     //         // keyboardType: TextInputType.phone,
      //     //         keyboardType: TextInputType.number,
      //     //       ),
      //     //       // Spacer(flex: 1),
      //     //       TextField(
      //     //         decoration: InputDecoration(
      //     //           fillColor: const Color.fromARGB(255, 201, 214, 221),
      //     //           filled: true,
      //     //           hintText: "username",
      //     //           icon: Icon(Icons.person),
      //     //           iconColor: Colors.red,
      //     //           // prefixIcon: Icon(Icons.person),
      //     //           prefixIconColor: Colors.red[700],
      //     //           prefixText: "username: ",
      //     //           labelText: "usernameLabel",
      //     //         ),
      //     //       ),
      //     //       TextField(
      //     //         scrollPadding: EdgeInsets.only(top: 10),
      //     //         decoration: InputDecoration(
      //     //           fillColor: const Color.fromARGB(255, 201, 214, 221),
      //     //           filled: true,
      //     //           hintText: "email",
      //     //           icon: Icon(Icons.person),
      //     //           iconColor: Colors.red,
      //     //           suffixIcon: Icon(Icons.person),
      //     //           suffixIconColor: Colors.red[700],
      //     //           prefixText: "username: ",
      //     //           labelText: "usernameLabel",
      //     //         ),
      //     //       ),
      //     //       Container(
      //     //         margin: EdgeInsets.only(top: 10),
      //     //         width: 400,
      //     //         height: 400,
      //     //         color: Colors.amber,
      //     //         child: Stack(
      //     //           alignment: Alignment.center,
      //     //           clipBehavior: Clip.none,
      //     //           children: [
      //     //             Container(width: 300, height: 300, color: Colors.red),
      //     //             Container(width: 200, height: 200, color: Colors.green),
      //     //             Positioned(
      //     //               top: 0,
      //     //               bottom: -10,
      //     //               child: Container(
      //     //                 width: 100,
      //     //                 height: 100,
      //     //                 color: Colors.blue,
      //     //               ),
      //     //             ),
      //     //             Positioned(left: 0, child: Text("Ragab")),
      //     //           ],
      //     //         ),
      //     //       ),
      //     //       Text("Choose your hoppies: "),
      //     //       CheckboxListTile(
      //     //         activeColor: Colors.redAccent,
      //     //         checkColor: Colors.black,
      //     //         title: Text("Football"),
      //     //         value: football,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             football = val!;
      //     //           });
      //     //         },
      //     //       ),
      //     //       CheckboxListTile(
      //     //         title: Text("Basketball"),
      //     //         value: basketball,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             basketball = val!;
      //     //           });
      //     //         },
      //     //       ),
      //     //       CheckboxListTile(
      //     //         activeColor: Colors.redAccent,
      //     //         checkColor: Colors.black,
      //     //         title: Text("Tennis"),
      //     //         value: tennis,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             tennis = val!;
      //     //           });
      //     //         },
      //     //       ),
      //     //       CheckboxListTile(
      //     //         title: Text("Sccore"),
      //     //         value: sccore,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             sccore = val!;
      //     //           });
      //     //         },
      //     //       ),
      //     //       Checkbox(
      //     //         value: status,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             status = val!;
      //     //           });
      //     //         },
      //     //       ),
      //     //       Text("Choose your country: ", style: TextStyle(fontSize: 20)),
      //     //       RadioListTile(
      //     //         title: Text("Egypt"),
      //     //         value: "Egypt",
      //     //         groupValue: country,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             country = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //       RadioListTile(
      //     //         title: Text("Mixeco"),
      //     //         value: "Mixeco",
      //     //         groupValue: country,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             country = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //       RadioListTile(
      //     //         title: Text("Jordan"),
      //     //         value: "Jordan",
      //     //         groupValue: country,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             country = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //       Text("Choose your Age: ", style: TextStyle(fontSize: 20)),
      //     //       RadioListTile(
      //     //         title: Text("12"),
      //     //         value: 12,
      //     //         groupValue: age,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             age = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //       RadioListTile(
      //     //         title: Text("18"),
      //     //         value: 18,
      //     //         groupValue: age,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             age = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //       RadioListTile(
      //     //         title: Text("20"),
      //     //         value: 20,
      //     //         groupValue: age,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             age = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //       Text(
      //     //         "Your country is $country",
      //     //         style: TextStyle(fontSize: 20, color: Colors.redAccent),
      //     //       ),
      //     //       Text(
      //     //         "Your Age is $age",
      //     //         style: TextStyle(
      //     //           fontSize: 20,
      //     //           color: const Color.fromARGB(255, 38, 179, 22),
      //     //         ),
      //     //       ),
      //     //       Radio(
      //     //         value: "Egypt",
      //     //         groupValue: country,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             country = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //       IconButton(
      //     //         onPressed: () {
      //     //           setState(() {
      //     //             i++;
      //     //             status = true;
      //     //           });
      //     //         },
      //     //         icon: Icon(Icons.add),
      //     //       ),
      //     //       Text("Counter $i"),
      //     //       status ? Icon(Icons.star) : Icon(Icons.star_border_outlined),

      //     //       // status == true
      //     //       //     ? Icon(Icons.star_border_outlined)
      //     //       //     : Icon(Icons.star),
      //     //       IconButton(
      //     //         onPressed: () {
      //     //           setState(() {
      //     //             status = false;
      //     //             i--;
      //     //           });
      //     //         },
      //     //         icon: Icon(Icons.remove),
      //     //       ),
      //     //       Row(
      //     //         // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     //         children: [
      //     //           status
      //     //               ? Icon(Icons.star)
      //     //               : Icon(Icons.star_border_outlined),
      //     //           status ? Text("favorit $i") : Text("Unfavorit $i"),
      //     //         ],
      //     //       ),
      //     //       Switch(
      //     //         inactiveThumbColor: Colors.redAccent,
      //     //         activeColor: Colors.green,
      //     //         activeTrackColor: Colors.greenAccent,
      //     //         inactiveTrackColor: Colors.orange,

      //     //         value: status,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             status = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //       SwitchListTile(
      //     //         title: Text("Status"),
      //     //         inactiveThumbColor: Colors.redAccent,
      //     //         activeColor: Colors.green,
      //     //         activeTrackColor: Colors.greenAccent,
      //     //         inactiveTrackColor: Colors.orange,

      //     //         value: status,
      //     //         onChanged: (val) {
      //     //           setState(() {
      //     //             status = val;
      //     //           });
      //     //         },
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //   ),
      // ),