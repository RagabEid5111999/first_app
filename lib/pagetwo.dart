import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  List data = [];
  bool loading = true;

  getDataWithoutFuture() async {
    var respons = await get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );
    var responsbody = jsonDecode(respons.body);
    data.addAll(responsbody);
    loading = false;
    setState(() {});
  }

  Future<List> getData() async {
    var respons = await get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );
    List responsbody = jsonDecode(respons.body);
    return responsbody;
  }

  @override
  void initState() {
    getDataWithoutFuture();
    print("========================= initstate page two");
    super.initState();
  }

  @override
  void dispose() {
    print("===================== page two dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Two"), centerTitle: true),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text("ERROR"));
            }
          }
          if (snapshot.hasData) {
            return ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, i) {
                return Card(
                  child: ListTile(
                    title: Text("$i - title: ${snapshot.data![i]["title"]}"),
                    subtitle: Text("body: ${snapshot.data![i]["body"]}"),
                    leading: Text("userId: ${snapshot.data![i]["userId"]}"),
                    trailing: Text("id: ${snapshot.data![i]["id"]}"),
                  ),
                );
              },
            );
          }

          return Text("");
        },
      ),
    );
  }
}
