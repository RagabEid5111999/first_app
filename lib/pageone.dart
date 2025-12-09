import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  ScrollController? scrollController;
  List data = [];
  bool loading = false;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController?.addListener(() => print("${scrollController?.offset}"));
    print("========================= initstate page one");
    super.initState();
  }

  @override
  void dispose() {
    print("===================== page one dispose");
    scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
            },
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
            color: Colors.amber[100],
            constraints: BoxConstraints(),
            icon: Icon(Icons.ac_unit_sharp),
            borderRadius: BorderRadius.circular(100),
            position: PopupMenuPosition.under,
            padding: EdgeInsets.only(right: 40),
            iconSize: 40,
            menuPadding: EdgeInsets.all(30),
            // child: Icon(Icons.maps_home_work),
            onCanceled: () => print("=============canceled"),
            onOpened: () => print("==============opened"),
            onSelected: (value) => print(value),
            itemBuilder:
                (context) => [
                  PopupMenuItem(
                    value: "valone",
                    onTap: () => print("on tap two"),
                    child: Text("one"),
                  ),
                  PopupMenuItem(
                    value: "valtwo",
                    onTap: () => print("on tap two"),
                    child: Text("two"),
                  ),
                ],
          ),
        ],
        title: Text("Page one"),
        centerTitle: true,
      ),
      body: ListView(
        controller: scrollController,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(
                context,
              ).pushNamedAndRemoveUntil("home", (context) => false);
            },
            child: Text("Go To Home"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed("pagetwo");
            },
            child: Text("Go To page two"),
          ),
          InkWell(
            onTap: () {
              scrollController?.animateTo(
                11620,
                curve: Curves.easeInCubic,
                duration: Duration(seconds: 2),
              );
            },
            child: Card(
              child: Text("Go to the end", textAlign: TextAlign.center),
            ),
          ),
          ...List.generate(100, (i) {
            return Container(
              color: i.isEven ? Colors.red : Colors.greenAccent,
              height: 100,
              alignment: Alignment.center,
              child: Text("$i", style: TextStyle(fontSize: 30)),
            );
          }),
          InkWell(
            onTap: () {
              scrollController?.animateTo(
                0,
                curve: Curves.decelerate,
                duration: Duration(seconds: 4),
              );
            },
            child: Card(
              child: Text("Go to the start", textAlign: TextAlign.center),
            ),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: MaterialButton(
              onPressed: () async {
                loading = true;
                setState(() {});
                var respons = await get(
                  Uri.parse("https://jsonplaceholder.typicode.com/posts"),
                );
                var responsbody = jsonDecode(respons.body);
                data.addAll(responsbody);
                loading = false;
                setState(() {});
              },
              child: Text("Http Request"),
            ),
          ),
          if (loading) Center(child: CircularProgressIndicator()),
          ...List.generate(data.length, (index) {
            return Card(
              child: ListTile(
                title: Text("$index - title: " + data[index]["title"]),
                subtitle: Text("body: " + data[index]["body"]),
                leading: Text("userId: ${data[index]["userId"]}"),
                trailing: Text("id: ${data[index]["id"]}"),
              ),
            );
          }),
          Container(height: 200),
        ],
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List username = [
    "ragab",
    "mohammed",
    "fady",
    "wael",
    "shady",
    "yasar",
    "abdo",
    "mohaned",
  ];
  List? filteruaser;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () => query = "", icon: Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result $query ");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: username.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              query = username[i];
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("${username[i]}", style: TextStyle(fontSize: 18)),
              ),
            ),
          );
        },
      );
    } else {
      filteruaser =
          username.where((element) => element.startsWith(query)).toList();
      return ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: filteruaser!.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              query = filteruaser![i];
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "${filteruaser![i]}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          );
        },
      );
    }
  }
}
