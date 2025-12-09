import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imagename;

  const Customcard({
    super.key,
    required this.name,
    required this.email,
    required this.date,
    required this.imagename,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      // height: 100,
      color: const Color.fromRGBO(33, 150, 243, 1),
      child: Card(
        clipBehavior: Clip.none,
        color: Colors.blueGrey,

        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset("lib/images/$imagename", fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("$name", style: TextStyle(fontSize: 12)),
                trailing: Text("$date", style: TextStyle(fontSize: 12)),
                subtitle: Text("$email", style: TextStyle(fontSize: 12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
