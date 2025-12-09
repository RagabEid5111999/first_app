import 'package:first_app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.amber,
      systemNavigationBarColor: Colors.blueGrey,
    ),
  );
  runApp(MyApp());
}
