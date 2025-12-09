import 'package:first_app/package/clippertest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardExample extends StatefulWidget {
  @override
  _KeyboardExampleState createState() => _KeyboardExampleState();
}

class _KeyboardExampleState extends State<KeyboardExample> {
  final FocusNode _focusNode = FocusNode();
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              // الصورة ستكون في الخلفية لأنها أول أداة
              Image.asset('lib/images/almsar.jpg'),

              // النص سيكون فوق الصورة
              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  'عنوان فوق الصورة',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ],
          ),
          //Add this CustomPaint widget to the Widget Tree
          CustomPaint(size: Size(114, 172), painter: RPSCustomPainter()),
          ClipPath(
            clipper: TopWaveClipper(),
            child: Container(
              width: 101,
              height: 100,
              decoration: BoxDecoration(color: Colors.amber),
            ),
          ),
          Center(
            child: KeyboardListener(
              focusNode: _focusNode,
              autofocus: true,
              onKeyEvent: (event) {
                if (event is KeyDownEvent) {
                  if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                    setState(() => y -= 10);
                  } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                    setState(() => y += 10);
                  } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                    setState(() => x -= 10);
                  } else if (event.logicalKey ==
                      LogicalKeyboardKey.arrowRight) {
                    setState(() => x += 10);
                  }
                }
              },
              child: Transform.translate(
                offset: Offset(x, y),
                child: Container(width: 100, height: 100, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
