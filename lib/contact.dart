import 'package:first_app/aboutuspage.dart';
import 'package:first_app/my_app.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: [
              Center(
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("copy succes"),
                        action: SnackBarAction(
                          label: "ok",
                          onPressed: () {
                            print("Snack bar");
                          },
                        ),
                      ),
                    );
                  },
                  child: Text("Show snack bar"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => MyApp()),
                      (rout) => false,
                    );
                  },
                  child: Text("Go To main Page (pushAndRemoveUntil)"),
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
                    ).pushNamedAndRemoveUntil("home", (rout) => false);
                  },
                  child: Text("Go To main Page (push named AndRemoveUntil)"),
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
                    ).push(MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                  child: Text("Go To about us Page (push)"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed("about");
                  },
                  child: Text("Go To about us Page (push named)"),
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
