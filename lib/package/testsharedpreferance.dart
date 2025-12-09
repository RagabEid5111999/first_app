import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestSharedPereferance extends StatefulWidget {
  const TestSharedPereferance({super.key});

  @override
  State<TestSharedPereferance> createState() => _TestSharedPereferanceState();
}

class _TestSharedPereferanceState extends State<TestSharedPereferance> {
  StreamSubscription<Position>? positionStream;
  getCurrentLocationApp() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    Position position = await Geolocator.getCurrentPosition();
    print("==============================");
    print(position.latitude);
    print(position.longitude);
    print("==============================");

    positionStream = Geolocator.getPositionStream().listen((
      Position? position,
    ) {
      print(
        position == null
            ? 'Unknown'
            : '${position.latitude.toString()}, ${position.longitude.toString()}',
      );
    });

    double distanceInMeters = Geolocator.distanceBetween(
      52.2165157,
      6.9437819,
      52.3546274,
      4.8285838,
    );
    print("==============================");
    print(distanceInMeters);
    print("==============================");
  }

  @override
  void initState() {
    getCurrentLocationApp();
    super.initState();
  }

  @override
  void dispose() {
    if (positionStream != null) positionStream!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Shared prefrances")),
      body: ListView(
        children: [
          MaterialButton(
            onPressed: () async {
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              sharedPreferences.setString("name", "Ahmed");
            },
            child: Text("set name"),
          ),
          MaterialButton(
            onPressed: () async {
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              String name = sharedPreferences.getString("name")!;
              print(name);
            },
            child: Text("get name"),
          ),
        ],
      ),
    );
  }
}
