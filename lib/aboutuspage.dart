import 'package:first_app/contact.dart';
import 'package:first_app/my_app.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Text("Go To main Page (push)"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed("home");
                  },
                  child: Text("Go To main Page (push named)"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Contact()));
                  },
                  child: Text("Go To contact Page (push)"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed("contact");
                  },
                  child: Text("Go To contact Page (push named)"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Back"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
