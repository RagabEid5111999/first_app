import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Snackbarpage extends StatelessWidget {
  GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text("Snackbar page"),

          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: [
              Builder(
                builder: (BuildContext context) {
                  return MaterialButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      // scaffoldKey.currentState!.showSnackBar(
                      //   SnackBar(content: Text("copy done")),
                      // );

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.fixed,
                          content: Text("copy done"),
                        ),
                      );

                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(
                      //     content: Text("copy succes"),
                      //     duration: Duration(seconds: 3),
                      //     action: SnackBarAction(
                      //       label: "ok",
                      //       onPressed: () {
                      //         print("Snack bar");
                      //       },
                      //     ),
                      //   ),
                      // );
                    },
                    child: Text("Show snack bar"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
