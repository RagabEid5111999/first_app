import 'package:flutter/material.dart';

// ---------- Shared styles & helpers ----------
const Color primaryColor = Color(0xFF0E8CA4); // teal-ish

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: 675,
              width: 600,
              // height: 675,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('lib/images/splash.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 580,
              bottom: 47,
              left: 27,
              right: 27,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'loginpage'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size.fromHeight(40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'دعنا نبدء',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
